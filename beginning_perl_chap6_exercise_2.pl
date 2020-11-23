
=cut

===================================================================================================
Write the code to find the individual number of sales Jim made on Friday and the total number of
the sales he made on Friday. Assume each number is the total for an individual sale.
my $sales = {
monday => { jim => [ 2 ], mary => [ 1, 3, 7 ] },
tuesday => { jim => [ 3, 8 ], mary => [ 5, 5 ] },
wednesday => { jim => [ 7, 0 ], mary => [ 3 ] },
thursday => { jim => [ 4 ], mary => [ 5, 7, 2, 5, 2 ] },
friday => { jim => [ 1, 1, 5 ], mary => [ 2 ] },
};
===================================================================================================

=cut

use strict;
use warnings;
use Data::Dumper;
my $sales = {
monday => { jim => [ 2 ], mary => [ 1, 3, 7 ] },
tuesday => { jim => [ 3, 8 ], mary => [ 5, 5 ] },
wednesday => { jim => [ 7, 0 ], mary => [ 3 ] },
thursday => { jim => [ 4 ], mary => [ 5, 7, 2, 5, 2 ] },
friday => { jim => [ 1, 1, 5 ], mary => [ 2 ] },
};

my $total = 0;
foreach my $sale (@{ $sales->{friday}->{jim} }) {
	$total += $sale;
}
print "Total of @{ $sales->{friday}->{jim} } is $total\n";
