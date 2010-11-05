require 'josso_agent.rb'

module Main
  APP_CONFIG = YAML.load_file(File.join(RAILS_ROOT, './config/josso_config.yml'))[RAILS_ENV]

  # <b>Implments the staic method</b> for<br />
  # who(here is ActionController in this plugin) will be extended with this JossoRorAgent Module
  def self.included(base_class)
    base_class.extend(ClassMethods)
  end

  # All the methods In this subModule JossoRorAgent::ClassMethods are static methods for the extended target.
  module ClassMethods
    # PlugIn entry
    def inject_josso_agent
      before_filter :authorize
    end
  end

  private
  # Check the user's authory
  def authorize
    begin
      partner_application_entry_url = request.url
      logger.info "Partner URL: #{partner_application_entry_url}"
      if (session[:username].nil?)
        login(partner_application_entry_url, params[:josso_assertion_id])
      elsif(is_josso_session_expired)
        #force logout
        logout
      end
    end
  end

  def login(partner_application_entry_url, josso_assertion_id)
    logger.info("Partner app URL: "+partner_application_entry_url)
    begin
      if (josso_assertion_id.nil?)
        redirect_to APP_CONFIG['josso_root'] + "signon/login.do?josso_back_to=" + partner_application_entry_url
      else
        jossoagent = josso_agent
        josso_session_id = jossoagent.get_josso_session_id(josso_assertion_id)
        logger.info("josso_session_id: #{josso_session_id}")
        if (josso_session_id.nil?)
          logger.error "josso_session_id is Nil!"
          reset_session
          redirect_to APP_CONFIG['josso_root'] + "signon/login.do?josso_back_to=" + partner_application_entry_url
          # login_error('Sorry! Generate josso_session_id error.')
          return false
        end
        session[:josso_session_id] = josso_session_id
        sso_user = jossoagent.find_user_in_session(josso_session_id)
        logger.info("SSO User Name: "+sso_user.name)
        logger.info("SSO User security domain: "+sso_user.securitydomain)

        sso_user.properties.each do |k, v|
          "#{k}=>#{v}"
        end

        if (sso_user.nil?)
          logger.error("Nil SSO user")
          reset_session
          redirect_to APP_CONFIG['josso_root'] + "signon/login.do?josso_back_to=" + partner_application_entry_url
          # login_error('Sorry! Fetching sso_user error.')
          return false
        else
          session[:username] = sso_user.name
          session[:session_timer_at] = Time.now.to_i
        end
        redirect_to partner_application_entry_url
      end
    rescue Exception => e
      #redirect to unique error page of rece system
      logger.error("Error: "+e.inspect)
    end
  end

  def josso_agent
    Jossoagent.new(APP_CONFIG['josso_ws_root'] + 'services/SSOIdentityManager', APP_CONFIG['josso_ws_root'] + 'services/SSOIdentityProvider')
  end


  def is_josso_session_expired
    return true unless session[:josso_session_id]
    sso_user = josso_agent.find_user_in_session(session[:josso_session_id])
    logger.debug("SSO session expired")
    return true if sso_user.nil?
    logger.debug("SSO User name in session: #{sso_user.name}")
    !sso_user.name.eql?(session[:username])
  end

  # Logout from the Josso
  def logout()
    if (!session[:josso_session_id].nil?)
      _logout(session[:josso_session_id], APP_CONFIG['partner_application_entry_url'])
    end
  end

  # This method can be used form any controller for custom logout
  def _logout(session_id=session[:josso_session_id], url=APP_CONFIG['partner_application_entry_url'])
    begin
      logger.info "Now logging out"
      josso_agent.logout(session_id)
    rescue Exception => e
      puts e
    ensure
      #redirect to unique error page of rece system
      reset_session
      redirect_to url
    end
  end

  def login_error(error_message)
    flash[:error_login] = error_message
    @redirect_to_url = APP_CONFIG['josso_root'] + 'signon/login.do'
  end
end
