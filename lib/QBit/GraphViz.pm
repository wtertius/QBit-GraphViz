package QBit::GraphViz;

use qbit;

use base qw(GraphViz);

sub _as_generic {
    my ($self, $type, $dot, $output) = @_;

    utf8::encode($dot);

    local $ENV{'PATH'} = 'usr/bin/' unless defined($ENV{'PATH'});

    return $self->SUPER::_as_generic($type, $dot, $output);
}

sub as_svg {
    my ($self, $type, $dot, $output) = @_;

    my $data = $self->SUPER::as_svg($type, $dot, $output);

    utf8::decode($data);

    return $data;
}

TRUE;
