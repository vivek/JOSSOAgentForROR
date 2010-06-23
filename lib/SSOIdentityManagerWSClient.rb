#!/usr/bin/env ruby
require 'jossoDriver.rb'

endpoint_url = ARGV.shift
obj = SSOIdentityManager.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   findUserInSession(findUserInSessionRequest)
#
# ARGS
#   findUserInSessionRequest FindUserInSessionRequestType - {http://josso.org/gateway/ws/1.1/protocol}FindUserInSessionRequestType
#
# RETURNS
#   findUserInSessionResponse FindUserInSessionResponseType - {http://josso.org/gateway/ws/1.1/protocol}FindUserInSessionResponseType
#
# RAISES
#   sSOIdentityManagerError SSOIdentityManagerErrorType - {http://josso.org/gateway/ws/1.1/protocol}SSOIdentityManagerErrorType
#   noSuchUserError NoSuchUserErrorType - {http://josso.org/gateway/ws/1.1/protocol}NoSuchUserErrorType
#   invalidSessionError InvalidSessionErrorType - {http://josso.org/gateway/ws/1.1/protocol}InvalidSessionErrorType
#
findUserInSessionRequest = nil
puts obj.findUserInSession(findUserInSessionRequest)

# SYNOPSIS
#   findUserInSecurityDomain(findUserInSecurityDomainRequest)
#
# ARGS
#   findUserInSecurityDomainRequest FindUserInSecurityDomainRequestType - {http://josso.org/gateway/ws/1.1/protocol}FindUserInSecurityDomainRequestType
#
# RETURNS
#   findUserInSecurityDomainResponse FindUserInSecurityDomainResponseType - {http://josso.org/gateway/ws/1.1/protocol}FindUserInSecurityDomainResponseType
#
# RAISES
#   sSOIdentityManagerError SSOIdentityManagerErrorType - {http://josso.org/gateway/ws/1.1/protocol}SSOIdentityManagerErrorType
#   noSuchUserError NoSuchUserErrorType - {http://josso.org/gateway/ws/1.1/protocol}NoSuchUserErrorType
#
findUserInSecurityDomainRequest = nil
puts obj.findUserInSecurityDomain(findUserInSecurityDomainRequest)

# SYNOPSIS
#   findRolesBySSOSessionId(findRolesBySSOSessionIdRequest)
#
# ARGS
#   findRolesBySSOSessionIdRequest FindRolesBySSOSessionIdRequestType - {http://josso.org/gateway/ws/1.1/protocol}FindRolesBySSOSessionIdRequestType
#
# RETURNS
#   findRolesBySSOSessionIdResponse FindRolesBySSOSessionIdResponseType - {http://josso.org/gateway/ws/1.1/protocol}FindRolesBySSOSessionIdResponseType
#
# RAISES
#   sSOIdentityManagerError SSOIdentityManagerErrorType - {http://josso.org/gateway/ws/1.1/protocol}SSOIdentityManagerErrorType
#   invalidSessionError InvalidSessionErrorType - {http://josso.org/gateway/ws/1.1/protocol}InvalidSessionErrorType
#
findRolesBySSOSessionIdRequest = nil
puts obj.findRolesBySSOSessionId(findRolesBySSOSessionIdRequest)

# SYNOPSIS
#   userExists(userExistsRequest)
#
# ARGS
#   userExistsRequest UserExistsRequestType - {http://josso.org/gateway/ws/1.1/protocol}UserExistsRequestType
#
# RETURNS
#   userExistsResponse UserExistsResponseType - {http://josso.org/gateway/ws/1.1/protocol}UserExistsResponseType
#
# RAISES
#   sSOIdentityManagerError SSOIdentityManagerErrorType - {http://josso.org/gateway/ws/1.1/protocol}SSOIdentityManagerErrorType
#
userExistsRequest = nil
puts obj.userExists(userExistsRequest)


