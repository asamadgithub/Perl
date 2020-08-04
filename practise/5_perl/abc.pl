#!/usr/bin/perl
use strict;
use warnings;


my $sum = add (1..100);
print "\nThe total sum is: $sum \n"; 

#--------------------------------------------

sub add {
my $total = 0;

   foreach my $x (@_){
   $total= $total+$x;
   }
  return $total;
}
