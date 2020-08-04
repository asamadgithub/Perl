#!/usr/bin/perl
use strict;
use warnings;
use 5.010;
#no warnings 'numeric';
no warnings 'numeric';


#Declaration -----------------
my $filename="numbers.txt";
my $sum;

#----------------------------


open (my $fh, "<" ,$filename)
   or die "Could not open the '$filename'. $!";
         $sum=0;
         while ( my $row = <$fh> ) {
          $sum+=$row;
         chomp $row;
         # print “$row”;
         } 

       say "The total sum is $sum ";




