#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

#--------------------------------------- File Opening Section & Printing  ---------------------------
my $filename='name.txt';
my %hash;
open ( my $fh ,'<', $filename ) or die "Could not open the '$filename'.$0 " ;
print "\n---- Printing file as it is via key-value hash pairs--- \n";
while (my  $line = <$fh>){
 chomp $line;
 my ($k,$v) =split(/,/ , $line);
 $hash{$k} = $v;
}

print Dumper \%hash;
#-------------------------------------------------------------------------------------------------

print " --- Sorting Alphabetically ----\n";
foreach my $x (sort keys %hash){
  print "$x ---> $hash{$x}\n";
  }
print "\n-----------------------------
===================================\n";
foreach my $x ( sort { $hash{$b} <=> $hash{$a} }keys  %hash ) {
 print " $x ---> $hash{$x}\n";
}

