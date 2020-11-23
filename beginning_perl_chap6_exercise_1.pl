
=cut

Create an array called @first and assign several values to it. Take a reference to that array, and
then dereference it into an array named @second. Print both arrays to ensure that you’ve copied
it correctly.

=cut

use strict;
use warnings;
use Data::Dumper;

my @first = qw (this is a test array to which several values are to be assigned);
my $ref_to_first =\@first;

printf "\@first contains:		@first\n";
print "\@\$ref_to_first contains:	@$ref_to_first\n";
