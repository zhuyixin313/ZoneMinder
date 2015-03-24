package ONVIF::Device::Types::IOCapabilities;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %InputConnectors_of :ATTR(:get<InputConnectors>);
my %RelayOutputs_of :ATTR(:get<RelayOutputs>);
my %Extension_of :ATTR(:get<Extension>);

__PACKAGE__->_factory(
    [ qw(        InputConnectors
        RelayOutputs
        Extension

    ) ],
    {
        'InputConnectors' => \%InputConnectors_of,
        'RelayOutputs' => \%RelayOutputs_of,
        'Extension' => \%Extension_of,
    },
    {
        'InputConnectors' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
        'RelayOutputs' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
        'Extension' => 'ONVIF::Device::Types::IOCapabilitiesExtension',
    },
    {

        'InputConnectors' => 'InputConnectors',
        'RelayOutputs' => 'RelayOutputs',
        'Extension' => 'Extension',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Device::Types::IOCapabilities

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
IOCapabilities from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * InputConnectors


=item * RelayOutputs


=item * Extension




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Device::Types::IOCapabilities
   InputConnectors =>  $some_value, # int
   RelayOutputs =>  $some_value, # int
   Extension =>  { # ONVIF::Device::Types::IOCapabilitiesExtension
     Auxiliary =>  $some_value, # boolean
     AuxiliaryCommands => $some_value, # AuxiliaryData
     Extension =>  { # ONVIF::Device::Types::IOCapabilitiesExtension2
     },
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut
