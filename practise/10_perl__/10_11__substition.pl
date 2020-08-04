#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

my $filename = shift or die "Usage: $0 filename";
open (my $fh ,'<', $filename)  or die "Could not open the '$filename'.$0";


my %map = (
    R1 => 'R2',
    R2 => 'R3',
    R3 => 'R1',
);

my $x = join("|",sort keys %map);


while (my $line = <$fh>){

#-----------------------------------------solution 1st --------------------------------
#$line=~ s{\b(R[123])\b}{$map{$1}}g;
#print "$line";
#}
#--------------------------------------------------------------------------------------

print "$line --";
$line=~ s{\b($x)\b}{$map{$1}}g;
print "$line";

}
