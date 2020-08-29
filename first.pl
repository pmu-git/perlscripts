use strict;
use warnings;
use diagnostics;

my @name     = qw | Pritesh Manohar Ugrankar|;
my @location = qw | Remember to enter the address here.|;
my @hobbies  = qw |Music Reading|;


my %info = (
	'name' => "@name",

);

print "$info{'name'}\n";
