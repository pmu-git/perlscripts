
=cut

You want to print out the score for Jim and Mary, but the following code is wrong. What’s wrong
with it? Show two ways to fi x it.
my $score_for = {
jim => 89,
mary => 73,
alice => 100,
bob => 83.
};
my ( $jim, $mary ) = %$score_for{ qw{jim mary} };
print "$jim $mary";

=cut

use strict;
use warnings;
use Data::Dumper;
my $score_for = {
jim => 89,
mary => 73,
alice => 100,
bob => 83.
};
my ( $jim, $mary ) = @$score_for{ qw /jim mary/ }; 
print "$jim $mary";
