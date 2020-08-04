#!/usr/bin/perl
use strict;
use warnings;

my $filename ='data.txt';
my @counters;
#------------------- File Opening -------------------------
print "-----------File Opening--------------\n";
open ( my $fh ,'<', $filename ) or die "Could not open the 'filename'.$0\n";

while ( my $line = <$fh>) {
  chomp ($line);
  print "$line\n";

print "###########\n"; 
  my @char= split (//,$line);
  #print "@char\n";
    foreach my $c (@char){
       if ($c ne " "){
       $counters[$c]++;
     }

   }





}
print "-----------------------------------------------------\n";
#---------------------------------------------------------

print "@counters\n";




