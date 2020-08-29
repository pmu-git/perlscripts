use strict;
use warnings;
use diagnostics;

my @name     = qw | Pritesh Manohar Ugrankar|;
my @location = qw | J1-Block JS-287 Ittina-Neela-Apartments \
		    E-Ciy Bangalore Karnataka PinCode-56100|;
my @hobbies  = qw |Music Reading|;


my %info = (
	'name' => "@name",

);

print "$info{'name'}\n";
