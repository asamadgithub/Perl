#!/usr/bin/perl
use strict;
use warnings;
use 5.010;
use Data::Dump;


my $filename= shift or die "Usage:  file???? ";
open (my $fh,'<',$filename) or die "Could not open the '$filename'.$0";

##SS Global Variables -----------
my @file_array;
##CC --------------------------------------------- end of global variables

##SS Reading file with array of array (2-d)
while (my $line = <$fh>) {
    chomp $line;
    my @line_array = split(/\s+/, $line);
    push (@file_array, \@line_array);
}
## CC------------------------------------------------ Reading complete;

print "$file_array[1][0]\n";
