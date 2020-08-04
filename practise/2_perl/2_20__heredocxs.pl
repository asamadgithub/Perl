#!/usr/bin/perl

use strict;
use warnings;


my $str = <<'END_STRING';
This is to insure that king use goats that may produce milk.
Other the other hand its necessary that goats should also get fruitful kings!
END_STRING

chomp $str;

print $str;
print "\n---------------------------------------\n";




my $other =<<"END_OTHER";
Begining
$str
End
END_OTHER


chomp $other;
print $other;
print "\n";


