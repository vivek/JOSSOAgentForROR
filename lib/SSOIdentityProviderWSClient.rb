#!/usr/bin/env ruby
require 'sso_identity_provider.rb'

endpoint_url = ARGV.shift
obj = SSOIdentityProvider.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   resolveAuthenticationAssertion(resolveAuthenticationAssertionRequest)
#
# ARGS
#   resolveAuthenticationAssertionRequest ResolveAuthenticationAssertionRequestType - {http://josso.org/gateway/ws/1.1/protocol}ResolveAuthenticationAssertionRequestType
#
# RETURNS
#   resolveAuthenticationAssertionResponse ResolveAuthenticationAssertionResponseType - {http://josso.org/gateway/ws/1.1/protocol}ResolveAuthenticationAssertionResponseType
#
# RAISES
#   sSOIdentityProviderError SSOIdentityProviderErrorType - {http://josso.org/gateway/ws/1.1/protocol}SSOIdentityProviderErrorType
#   assertionNotValidError AssertionNotValidErrorType - {http://josso.org/gateway/ws/1.1/protocol}AssertionNotValidErrorType
#
resolveAuthenticationAssertionRequest = nil
puts obj.resolveAuthenticationAssertion(resolveAuthenticationAssertionRequest)

# SYNOPSIS
#   assertIdentityWithSimpleAuthentication(assertIdentityWithSimpleAuthenticationRequest)
#
# ARGS
#   assertIdentityWithSimpleAuthenticationRequest AssertIdentityWithSimpleAuthenticationRequestType - {http://josso.org/gateway/ws/1.1/protocol}AssertIdentityWithSimpleAuthenticationRequestType
#
# RETURNS
#   assertIdentityWithSimpleAuthenticationResponse AssertIdentityWithSimpleAuthenticationResponseType - {http://josso.org/gateway/ws/1.1/protocol}AssertIdentityWithSimpleAuthenticationResponseType
#
# RAISES
#   sSOIdentityProviderError SSOIdentityProviderErrorType - {http://josso.org/gateway/ws/1.1/protocol}SSOIdentityProviderErrorType
#
assertIdentityWithSimpleAuthenticationRequest = nil
puts obj.assertIdentityWithSimpleAuthentication(assertIdentityWithSimpleAuthenticationRequest)

# SYNOPSIS
#   globalSignoff(globalSignoffRequest)
#
# ARGS
#   globalSignoffRequest GlobalSignoffRequestType - {http://josso.org/gateway/ws/1.1/protocol}GlobalSignoffRequestType
#
# RETURNS
#   globalSignoffResponse GlobalSignoffResponseType - {http://josso.org/gateway/ws/1.1/protocol}GlobalSignoffResponseType
#
globalSignoffRequest = nil
puts obj.globalSignoff(globalSignoffRequest)


