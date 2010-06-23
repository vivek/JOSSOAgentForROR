require 'josso_classes.rb'
require 'sso_identity_provider_classes.rb'
require 'soap/rpc/driver'

class SSOIdentityProvider < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "http://replace this !"
  NsAssertIdentityWithSimpleAuthentication = "http://josso.org/gateway/ws/1.1/wsdl/soapbinding/IdentityProvider/assertIdentityWithSimpleAuthentication"
  NsGlobalSignoff = "http://josso.org/gateway/ws/1.1/wsdl/soapbinding/IdentityProvider/globalSignoff"
  NsResolveAuthenticationAssertion = "http://josso.org/gateway/ws/1.1/wsdl/soapbinding/IdentityProvider/resolveAuthenticationAssertion"

  Methods = [
    [ XSD::QName.new(NsResolveAuthenticationAssertion, "resolveAuthenticationAssertion"),
      "http://josso.org/gateway/ws/1.1/wsdl/soapbinding/IdentityProvider/resolveAuthenticationAssertion",
      "resolveAuthenticationAssertion",
      [ ["in", "ResolveAuthenticationAssertionRequest", ["ResolveAuthenticationAssertionRequestType", "http://josso.org/gateway/ws/1.1/protocol", "ResolveAuthenticationAssertionRequestType"]],
        ["retval", "ResolveAuthenticationAssertionResponse", ["ResolveAuthenticationAssertionResponseType", "http://josso.org/gateway/ws/1.1/protocol", "ResolveAuthenticationAssertionResponseType"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {"AssertionNotValidFault"=>{:ns=>"http://josso.org/gateway/ws/1.1/wsdl", :name=>"AssertionNotValidFault", :namespace=>"http://josso.org/gateway/ws/1.1/wsdl/soapbinding/IdentityProvider/resolveAuthenticationAssertion", :use=>"encoded", :encodingstyle=>"document"}, "SSOIdentityProviderFault"=>{:ns=>"http://josso.org/gateway/ws/1.1/wsdl", :name=>"SSOIdentityProviderFault", :namespace=>"http://josso.org/gateway/ws/1.1/wsdl/soapbinding/IdentityProvider/resolveAuthenticationAssertion", :use=>"encoded", :encodingstyle=>"document"}} }
    ],
    [ XSD::QName.new(NsAssertIdentityWithSimpleAuthentication, "assertIdentityWithSimpleAuthentication"),
      "http://josso.org/gateway/ws/1.1/wsdl/soapbinding/IdentityProvider/assertIdentityWithSimpleAuthentication",
      "assertIdentityWithSimpleAuthentication",
      [ ["in", "AssertIdentityWithSimpleAuthenticationRequest", ["AssertIdentityWithSimpleAuthenticationRequestType", "http://josso.org/gateway/ws/1.1/protocol", "AssertIdentityWithSimpleAuthenticationRequestType"]],
        ["retval", "AssertIdentityWithSimpleAuthenticationResponse", ["AssertIdentityWithSimpleAuthenticationResponseType", "http://josso.org/gateway/ws/1.1/protocol", "AssertIdentityWithSimpleAuthenticationResponseType"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {"SSOIdentityProviderFault"=>{:ns=>"http://josso.org/gateway/ws/1.1/wsdl", :name=>"SSOIdentityProviderFault", :namespace=>"http://josso.org/gateway/ws/1.1/wsdl/soapbinding/IdentityProvider/assertIdentityWithSimpleAuthentication", :use=>"encoded", :encodingstyle=>"document"}} }
    ],
    [ XSD::QName.new(NsGlobalSignoff, "globalSignoff"),
      "http://josso.org/gateway/ws/1.1/wsdl/soapbinding/IdentityProvider/globalSignoff",
      "globalSignoff",
      [ ["in", "GlobalSignoffRequest", ["GlobalSignoffRequestType", "http://josso.org/gateway/ws/1.1/protocol", "GlobalSignoffRequestType"]],
        ["retval", "GlobalSignoffResponse", ["GlobalSignoffResponseType", "http://josso.org/gateway/ws/1.1/protocol", "GlobalSignoffResponseType"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {"SSOIdentityProviderFault"=>{:ns=>"http://josso.org/gateway/ws/1.1/wsdl", :name=>"SSOIdentityProviderFault", :namespace=>"http://josso.org/gateway/ws/1.1/wsdl/soapbinding/IdentityProvider/globalSignoff", :use=>"encoded", :encodingstyle=>"document"}} }
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



