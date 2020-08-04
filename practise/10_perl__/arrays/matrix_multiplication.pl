#!/usr/bin/perl
use strict;
use warnings;
use 5.010;

my @a= (
[1,2,3],
[5,6,7],
[9,10,11]);

my @b= (
[3,2,3],
[7,6,7],
[11,10,11]);


my @c;

# Multiplication Operation

 foreach my $i(0..$#a){
  foreach my $j(0..$#a){
   foreach my $k(0..$#a){
     $c[$i][$j]+= $a[$i][$k]*$b[$k][$j];
       }
      }
     }

# Final Matrix printing 
print "\nResultant Matrix \n";
 foreach my $i1(0..$#c){
    foreach my $j1(0..$#c){
     print "$c[$i1][$j1]\t";
   }
  printf "\n";
}
