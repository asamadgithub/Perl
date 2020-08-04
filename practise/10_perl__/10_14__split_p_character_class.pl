#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

my $filename = shift or die "Usage: file??";
open (my $fh,'<',$filename) or die "Could not open the '$filename'.$0";

while (my $line=<$fh>){
   chomp $line;
    process_split($line);
}


sub process_split{
   my $line=shift;
    my %hash= split(/[=&]+/,$line);

print Dumper \%hash;    
}
