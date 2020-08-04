#!/usr/bin/perl
use strict;
use warnings;
use 5.010;



#---------------------- 1-D array  Declaration;
my @d_1=(9,8,7,6,5);
#-------------------------------

my $r=\@d_1;
print "The reference of ID array is: $r\n";

print "@{$r}\n";
