require 'xsd/qname'

# {http://josso.org/gateway/ws/1.1/protocol}ResolveAuthenticationAssertionRequestType
#   assertionId - SOAP::SOAPString
class ResolveAuthenticationAssertionRequestType
  attr_accessor :assertionId

  def initialize(assertionId = nil)
    @assertionId = assertionId
  end
end

# {http://josso.org/gateway/ws/1.1/protocol}ResolveAuthenticationAssertionResponseType
#   ssoSessionId - SOAP::SOAPString
#   securityDomain - SOAP::SOAPString
class ResolveAuthenticationAssertionResponseType
  attr_accessor :ssoSessionId
  attr_accessor :securityDomain

  def initialize(ssoSessionId = nil, securityDomain = nil)
    @ssoSessionId = ssoSessionId
    @securityDomain = securityDomain
  end
end

# {http://josso.org/gateway/ws/1.1/protocol}AssertIdentityWithSimpleAuthenticationRequestType
#   securityDomain - SOAP::SOAPString
#   username - SOAP::SOAPString
#   password - SOAP::SOAPString
class AssertIdentityWithSimpleAuthenticationRequestType
  attr_accessor :securityDomain
  attr_accessor :username
  attr_accessor :password

  def initialize(securityDomain = nil, username = nil, password = nil)
    @securityDomain = securityDomain
    @username = username
    @password = password
  end
end

# {http://josso.org/gateway/ws/1.1/protocol}AssertIdentityWithSimpleAuthenticationResponseType
#   assertionId - SOAP::SOAPString
class AssertIdentityWithSimpleAuthenticationResponseType
  attr_accessor :assertionId

  def initialize(assertionId = nil)
    @assertionId = assertionId
  end
end

# {http://josso.org/gateway/ws/1.1/protocol}GlobalSignoffRequestType
#   ssoSessionId - SOAP::SOAPString
class GlobalSignoffRequestType
  attr_accessor :ssoSessionId

  def initialize(ssoSessionId = nil)
    @ssoSessionId = ssoSessionId
  end
end

# {http://josso.org/gateway/ws/1.1/protocol}GlobalSignoffResponseType
#   ssoSessionId - SOAP::SOAPString
class GlobalSignoffResponseType
  attr_accessor :ssoSessionId

  def initialize(ssoSessionId = nil)
    @ssoSessionId = ssoSessionId
  end
end

# {http://josso.org/gateway/ws/1.1/protocol}SSOIdentityProviderErrorType
#   errMessage - SOAP::SOAPString
class SSOIdentityProviderErrorType < ::StandardError
  attr_accessor :errMessage

  def initialize(errMessage = nil)
    @errMessage = errMessage
  end
end

# {http://josso.org/gateway/ws/1.1/protocol}AssertionNotValidErrorType
#   assertionId - SOAP::SOAPString
class AssertionNotValidErrorType < ::StandardError
  attr_accessor :assertionId

  def initialize(assertionId = nil)
    @assertionId = assertionId
  end
end

# {http://josso.org/gateway/ws/1.1/protocol}FindUserInSessionRequestType
#   ssoSessionId - SOAP::SOAPString
class FindUserInSessionRequestType
  attr_accessor :ssoSessionId

  def initialize(ssoSessionId = nil)
    @ssoSessionId = ssoSessionId
  end
end

# {http://josso.org/gateway/ws/1.1/protocol}FindUserInSessionResponseType
#   sSOUser - SSOUserType
class FindUserInSessionResponseType
  attr_accessor :sSOUser

  def initialize(sSOUser = nil)
    @sSOUser = sSOUser
  end
end

# {http://josso.org/gateway/ws/1.1/protocol}FindUserInSecurityDomainRequestType
#   securityDomain - SOAP::SOAPString
#   username - SOAP::SOAPString
class FindUserInSecurityDomainRequestType
  attr_accessor :securityDomain
  attr_accessor :username

  def initialize(securityDomain = nil, username = nil)
    @securityDomain = securityDomain
    @username = username
  end
end

# {http://josso.org/gateway/ws/1.1/protocol}FindUserInSecurityDomainResponseType
#   sSOUser - SSOUserType
class FindUserInSecurityDomainResponseType
  attr_accessor :sSOUser

  def initialize(sSOUser = nil)
    @sSOUser = sSOUser
  end
end

# {http://josso.org/gateway/ws/1.1/protocol}FindRolesBySSOSessionIdRequestType
#   ssoSessionId - SOAP::SOAPString
class FindRolesBySSOSessionIdRequestType
  attr_accessor :ssoSessionId

  def initialize(ssoSessionId = nil)
    @ssoSessionId = ssoSessionId
  end
end

# {http://josso.org/gateway/ws/1.1/protocol}FindRolesBySSOSessionIdResponseType
#   username - SOAP::SOAPString
#   roles - ArrayOfSSORoleType
class FindRolesBySSOSessionIdResponseType
  attr_accessor :username
  attr_accessor :roles

  def initialize(username = nil, roles = nil)
    @username = username
    @roles = roles
  end
end

# {http://josso.org/gateway/ws/1.1/protocol}UserExistsRequestType
#   securityDomain - SOAP::SOAPString
#   username - SOAP::SOAPString
class UserExistsRequestType
  attr_accessor :securityDomain
  attr_accessor :username

  def initialize(securityDomain = nil, username = nil)
    @securityDomain = securityDomain
    @username = username
  end
end

# {http://josso.org/gateway/ws/1.1/protocol}UserExistsResponseType
#   userexists - SOAP::SOAPBoolean
class UserExistsResponseType
  attr_accessor :userexists

  def initialize(userexists = nil)
    @userexists = userexists
  end
end

# {http://josso.org/gateway/ws/1.1/protocol}SSOIdentityManagerErrorType
#   errMessage - SOAP::SOAPString
class SSOIdentityManagerErrorType
  attr_accessor :errMessage

  def initialize(errMessage = nil)
    @errMessage = errMessage
  end
end

# {http://josso.org/gateway/ws/1.1/protocol}NoSuchUserErrorType
#   securityDomain - SOAP::SOAPString
#   username - SOAP::SOAPString
class NoSuchUserErrorType
  attr_accessor :securityDomain
  attr_accessor :username

  def initialize(securityDomain = nil, username = nil)
    @securityDomain = securityDomain
    @username = username
  end
end

# {http://josso.org/gateway/ws/1.1/protocol}InvalidSessionErrorType
#   sessionId - SOAP::SOAPString
class InvalidSessionErrorType
  attr_accessor :sessionId

  def initialize(sessionId = nil)
    @sessionId = sessionId
  end
end

# {http://josso.org/gateway/ws/1.1/protocol}AccessSessionRequestType
#   ssoSessionId - SOAP::SOAPString
class AccessSessionRequestType
  attr_accessor :ssoSessionId

  def initialize(ssoSessionId = nil)
    @ssoSessionId = ssoSessionId
  end
end

# {http://josso.org/gateway/ws/1.1/protocol}AccessSessionResponseType
#   ssoSessionId - SOAP::SOAPString
class AccessSessionResponseType
  attr_accessor :ssoSessionId

  def initialize(ssoSessionId = nil)
    @ssoSessionId = ssoSessionId
  end
end

# {http://josso.org/gateway/ws/1.1/protocol}SessionRequestType
#   sessionId - SOAP::SOAPString
class SessionRequestType
  attr_accessor :sessionId

  def initialize(sessionId = nil)
    @sessionId = sessionId
  end
end

# {http://josso.org/gateway/ws/1.1/protocol}SessionResponseType
#   sSOSession - SSOSessionType
class SessionResponseType
  attr_accessor :sSOSession

  def initialize(sSOSession = nil)
    @sSOSession = sSOSession
  end
end

# {http://josso.org/gateway/ws/1.1/protocol}SSOSessionErrorType
#   errMessage - SOAP::SOAPString
class SSOSessionErrorType
  attr_accessor :errMessage

  def initialize(errMessage = nil)
    @errMessage = errMessage
  end
end

# {http://josso.org/gateway/ws/1.1/protocol}NoSuchSessionErrorType
#   sessionId - SOAP::SOAPString
class NoSuchSessionErrorType
  attr_accessor :sessionId

  def initialize(sessionId = nil)
    @sessionId = sessionId
  end
end

# {http://josso.org/gateway/ws/1.1/protocol}SSOSessionType
#   id - SOAP::SOAPString
#   creationTime - SOAP::SOAPLong
#   lastAccessTime - SOAP::SOAPLong
#   maxInactiveInterval - SOAP::SOAPInt
#   username - SOAP::SOAPString
#   accessCount - SOAP::SOAPLong
class SSOSessionType
  attr_accessor :id
  attr_accessor :creationTime
  attr_accessor :lastAccessTime
  attr_accessor :maxInactiveInterval
  attr_accessor :username
  attr_accessor :accessCount

  def initialize(id = nil, creationTime = nil, lastAccessTime = nil, maxInactiveInterval = nil, username = nil, accessCount = nil)
    @id = id
    @creationTime = creationTime
    @lastAccessTime = lastAccessTime
    @maxInactiveInterval = maxInactiveInterval
    @username = username
    @accessCount = accessCount
  end
end

# {http://josso.org/gateway/ws/1.1/protocol}SSOUserType
#   properties - ArrayOfSSONameValuePairType
#   name - SOAP::SOAPString
#   securitydomain - SOAP::SOAPString
class SSOUserType
  attr_accessor :properties
  attr_accessor :name
  attr_accessor :securitydomain

  def initialize(properties = nil, name = nil, securitydomain = nil)
    @properties = properties
    @name = name
    @securitydomain = securitydomain
  end
end

# {http://josso.org/gateway/ws/1.1/protocol}SSORoleType
#   name - SOAP::SOAPString
class SSORoleType
  attr_accessor :name

  def initialize(name = nil)
    @name = name
  end
end

# {http://josso.org/gateway/ws/1.1/protocol}SSONameValuePairType
#   name - SOAP::SOAPString
#   value - SOAP::SOAPString
class SSONameValuePairType
  attr_accessor :name
  attr_accessor :value

  def initialize(name = nil, value = nil)
    @name = name
    @value = value
  end
end

# {http://josso.org/gateway/ws/1.1/protocol}ArrayOfSSORoleType
class ArrayOfSSORoleType < ::Array
end

# {http://josso.org/gateway/ws/1.1/protocol}ArrayOfSSONameValuePairType
class ArrayOfSSONameValuePairType < ::Array
end
