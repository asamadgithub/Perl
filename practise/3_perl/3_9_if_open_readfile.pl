#!/usr/bin/perl
use strict;
use warnings;
use 5.010;


#Declaration ---------------------------
my $filename = "data.txt";

#--------------------------------------
 if(open ( my $fh ,'<:encoding(UTF-8)',$filename )){
             while ( my $row = <$fh> ){
             chomp ($row);
             say "$row";
             }
    } else {
    warn " Could not open the '$filename'.$!";
}

