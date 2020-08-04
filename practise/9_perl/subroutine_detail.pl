#!/usr/bin/perl
use strict;
use warnings;



my $x=10;my $y=100;my $z=1000;

my ($u,$v,$w)=pro_num($x,$y,$z);
print "$u===$v===$w\n";


sub pro_num{
   my $t1= $_[0];  print "t1 is\t$t1\n";
   my $t2= $_[1];  print "t2 is\t$t2\n";
   my $t3= $_[2];  print "t3 is\t$t3\n";
   
   return ("$t1","$t2","$t3"); 
}

