use strict;
use warnings;
use diagnostics;

while (my($key, $value) = each (%ENV)) {
	print "$key: $value\n";
}
