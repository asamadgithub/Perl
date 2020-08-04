#!/usr/bin/perl
use strict;
use warnings;

print "\n\n";
#---------------- -----------------------------
my $x=time();

print "Time since January-1st 1970 is seconds: $x\n";

my $y = localtime($x);
print "Scaler contexted local time: $y\n";


my @z = localtime($x);
print "List contexted printing of time: @z\n";

#---------- -------------------------------------
#foreach my $t (@z){
#      chomp ($t);
#      print "$t \n";
#
#  }
print "The year is ", 1900+$z[5] ,"\n\n" ;

