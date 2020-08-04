#!/usr/bin/perl
use strict;
use warnings;



my %date_hash=(
    '2016-01-01'  => '2016-01-01',
    '2016-2-6'  => '2016-02-06',
    '2016-3-7'  => '2016-03-07',
    '2016-4-8'  => '2016-04-08',
    '2016-5-9'  => '2016-05-09',
 );



foreach my $x(sort keys %date_hash){
       my $date_correct = $x;

     $date_correct=~ s/-(\d)\b/-0$1/g;
printf "old: %15s \n- ",$x;
printf "New: %15s \n",$date_correct;

}
