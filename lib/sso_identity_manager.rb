require 'josso_classes.rb'
require 'sso_identity_manager_classes.rb'
require 'soap/rpc/driver'


class SSOIdentityManager < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "http://replace this !"
  NsFindRolesBySSOSessionId = "http://josso.org/gateway/ws/1.1/wsdl/soapbinding/IdentityManager/findRolesBySSOSessionId"
  NsFindUserInSecurityDomain = "http://josso.org/gateway/ws/1.1/wsdl/soapbinding/IdentityManager/findUserInSecurityDomain"
  NsFindUserInSession = "http://josso.org/gateway/ws/1.1/wsdl/soapbinding/IdentityManager/findUserInSession"
  NsUserExists = "http://josso.org/gateway/ws/1.1/wsdl/soapbinding/IdentityManager/userExists"

  Methods = [
    [ XSD::QName.new(NsFindUserInSession, "findUserInSession"),
      "http://josso.org/gateway/ws/1.1/wsdl/soapbinding/IdentityManager/findUserInSession",
      "findUserInSession",
      [ ["in", "FindUserInSessionRequest", ["FindUserInSessionRequestType", "http://josso.org/gateway/ws/1.1/protocol", "FindUserInSessionRequestType"]],
        ["retval", "FindUserInSessionResponse", ["FindUserInSessionResponseType", "http://josso.org/gateway/ws/1.1/protocol", "FindUserInSessionResponseType"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {"SSOIdentityManagerErrorFault"=>{:ns=>"http://josso.org/gateway/ws/1.1/wsdl", :name=>"SSOIdentityManagerErrorFault", :namespace=>"http://josso.org/gateway/ws/1.1/wsdl/soapbinding/IdentityManager/findUserInSession", :use=>"encoded", :encodingstyle=>"http://schemas.xmlsoap.org/soap/encoding/"}, "NoSuchUserErrorFault"=>{:ns=>"http://josso.org/gateway/ws/1.1/wsdl", :name=>"NoSuchUserErrorFault", :namespace=>"http://josso.org/gateway/ws/1.1/wsdl/soapbinding/IdentityManager/findUserInSession", :use=>"encoded", :encodingstyle=>"http://schemas.xmlsoap.org/soap/encoding/"}, "InvalidSessionErrorFault"=>{:ns=>"http://josso.org/gateway/ws/1.1/wsdl", :name=>"InvalidSessionErrorFault", :namespace=>"http://josso.org/gateway/ws/1.1/wsdl/soapbinding/IdentityManager/findUserInSession", :use=>"encoded", :encodingstyle=>"http://schemas.xmlsoap.org/soap/encoding/"}} }
    ],
    [ XSD::QName.new(NsFindUserInSecurityDomain, "findUserInSecurityDomain"),
      "http://josso.org/gateway/ws/1.1/wsdl/soapbinding/IdentityManager/findUserInSecurityDomain",
      "findUserInSecurityDomain",
      [ ["in", "FindUserInSecurityDomainRequest", ["FindUserInSecurityDomainRequestType", "http://josso.org/gateway/ws/1.1/protocol", "FindUserInSecurityDomainRequestType"]],
        ["retval", "FindUserInSecurityDomainResponse", ["FindUserInSecurityDomainResponseType", "http://josso.org/gateway/ws/1.1/protocol", "FindUserInSecurityDomainResponseType"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {"SSOIdentityManagerErrorFault"=>{:ns=>"http://josso.org/gateway/ws/1.1/wsdl", :name=>"SSOIdentityManagerErrorFault", :namespace=>"http://josso.org/gateway/ws/1.1/wsdl/soapbinding/IdentityManager/findUserInSecurityDomain", :use=>"encoded", :encodingstyle=>"document"}, "NoSuchUserErrorFault"=>{:ns=>"http://josso.org/gateway/ws/1.1/wsdl", :name=>"NoSuchUserErrorFault", :namespace=>"http://josso.org/gateway/ws/1.1/wsdl/soapbinding/IdentityManager/findUserInSecurityDomain", :use=>"encoded", :encodingstyle=>"document"}} }
    ],
    [ XSD::QName.new(NsFindRolesBySSOSessionId, "findRolesBySSOSessionId"),
      "http://josso.org/gateway/ws/1.1/wsdl/soapbinding/IdentityManager/findRolesBySSOSessionId",
      "findRolesBySSOSessionId",
      [ ["in", "FindRolesBySSOSessionIdRequest", ["FindRolesBySSOSessionIdRequestType", "http://josso.org/gateway/ws/1.1/protocol", "FindRolesBySSOSessionIdRequestType"]],
        ["retval", "FindRolesBySSOSessionIdResponse", ["FindRolesBySSOSessionIdResponseType", "http://josso.org/gateway/ws/1.1/protocol", "FindRolesBySSOSessionIdResponseType"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {"SSOIdentityManagerErrorFault"=>{:ns=>"http://josso.org/gateway/ws/1.1/wsdl", :name=>"SSOIdentityManagerErrorFault", :namespace=>"http://josso.org/gateway/ws/1.1/wsdl/soapbinding/IdentityManager/findRolesBySSOSessionId", :use=>"encoded", :encodingstyle=>"document"}, "InvalidSessionErrorFault"=>{:ns=>"http://josso.org/gateway/ws/1.1/wsdl", :name=>"InvalidSessionErrorFault", :namespace=>"http://josso.org/gateway/ws/1.1/wsdl/soapbinding/IdentityManager/findRolesBySSOSessionId", :use=>"encoded", :encodingstyle=>"document"}} }
    ],
    [ XSD::QName.new(NsUserExists, "userExists"),
      "http://josso.org/gateway/ws/1.1/wsdl/soapbinding/IdentityManager/userExists",
      "userExists",
      [ ["in", "UserExistsRequest", ["UserExistsRequestType", "http://josso.org/gateway/ws/1.1/protocol", "UserExistsRequestType"]],
        ["retval", "UserExistsResponse", ["UserExistsResponseType", "http://josso.org/gateway/ws/1.1/protocol", "UserExistsResponseType"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {"SSOIdentityManagerErrorFault"=>{:ns=>"http://josso.org/gateway/ws/1.1/wsdl", :name=>"SSOIdentityManagerErrorFault", :namespace=>"http://josso.org/gateway/ws/1.1/wsdl/soapbinding/IdentityManager/userExists", :use=>"encoded", :encodingstyle=>"document"}} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = JossoMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = JossoMappingRegistry::LiteralRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end


