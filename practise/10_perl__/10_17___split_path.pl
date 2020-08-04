#!/usr/bin/perl
use strict;
use warnings;


my $path =  "/Users/asamad/Documents/programming_Coding/learning_Perls/practise/10_perl__";


my @array1 =split("/",$path);

foreach my $inn(@array1){
  chomp $inn;
 #print "$inn";

}
#print "\n";

#----------- printing last portion of $path ----------------------

my $N=scalar(@array1);
 print "last one is:- $array1[$N-1]\n";

#---------------------------------------------------------------
print "---------------------------------------\n";
#---------- printing untill last / --------------------------

foreach my $i (0..$#array1-1){
   print "$array1[$i]/";
 }
print "\n";


