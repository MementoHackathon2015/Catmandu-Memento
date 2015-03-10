package Catmandu::Fix::time_travel;

use Catmandu::Sane;
use Moo;
use Memento::TimeTravel;
use Catmandu::Fix::Has;

has path => (fix_arg => 1);
has date => (fix_arg => 1);

with 'Catmandu::Fix::SimpleGetValue';

sub emit_value {
    my ($self, $var) = @_;
    my $date = $self->date;
    
    "${var} = Memento::TimeTravel::find_mementos(${var},${date}) if is_string(${var});";
}

=head1 NAME

Catmandu::Fix::time_travel - find Mementos for a url

=head1 SYNOPSIS

   # Find mementos for a URL. E.g. myurl => 'http://www.ugent.be'
   time_travel(myurl)  

=head1 SEE ALSO

L<Catmandu::Fix>

=cut


1;