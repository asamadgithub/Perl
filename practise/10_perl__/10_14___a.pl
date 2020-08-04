#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;


my %a;
my @tempo;
my $filename = shift or die "Usage: $0 filename";
open (my $fh , '<' ,$filename) or die "Could not open the '$filename'";

while ( my $line= <$fh>){
 chomp $line;
  process ($line);
}

sub process {
 my %hash;  
  foreach my $in(@_){
   my @a= split (/&/,$in); 
     foreach my $inn(@a){
      my($k,$v)= split (/=/,$inn);
       chomp $k;chomp $v;
       $hash{$k}=$v; 
     }
   
  }
print Dumper \%hash;
%a=%hash;

}
print Dumper \%a;
#foreach my $p(sort keys %a){
#  print "$p ||| $a{$p}\n";
#}
