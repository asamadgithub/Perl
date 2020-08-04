#!/usr/bin/perl
use strict;
use warnings;


my $x;
my $filename = shift or die print "\nPlease provide the file in command line. $0\n";
open (my $fh , '<' , $filename ) or die "Could not open the '$filename'.$0 ";

 while (my $line = <$fh> ){
   chomp $line;
   if ($line =~ /reached required accuracy - stopping structural energy minimisation/) {
    $x=1;
  }
}

if (defined $x) {
print "yes, matched\n";
  } else {

print "no match\n"; 
}
