#!/usr/bin/perl
use strict;
use warnings;
use 5.010;



#---------------------- 2-D array  Declaration;
my @d_2=([1,2,3,4,5],
         [2,3,4,1,2],
         [9,8,9,7,5],        
);
#-------------------------------

my $ref1=\@d_2;
print "The reference of ID array is: $ref1\n";

print "a\t";
my $ref2=@d_2;
print "$ref2\n";

print "b\t";
my $ref3=scalar (@d_2);
print "$ref3\n";

#print "c\t";
#my $ref4 = length (@d_2);
#print "$ref4\n";


print "d\t";
my $x='11xxx';
my $ref5= length $x;
print "$ref5\n";

my ($u1,$u2,$u3)=@d_2;
print "this is u1 ---> $u1\n";
print "this is u2 ---> $u2\n";
print "this is u3 ---> $u3\n";
print "plz keep in mind, this is ref1 ---> $ref1\n";
#------------------------------------------------
print "---------------------------------------------\n";
print "printing first slice of atd_2 via u1\n";
print "Method 1\n";
print "@{$u1}\n";
print "Method 2\n";
foreach my $i(0..4){
     print "${$u1}[$i]\t";
}
print "\n\n";


#********************************************************************
print "***********************************************************\n";
print "printing 2d full array\nMethod-1\n";
foreach my $i(0..2){
 foreach my $j(0..4){
   print "${$ref1}[$i][$j]\t";
    }
  print "\n";
 }


