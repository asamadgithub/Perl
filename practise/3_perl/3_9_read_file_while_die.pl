#!/usr/bin/perl    
use strict;
use warnings;
use 5.010;    

# Declarations of Global Variables;----------------------
my $filename="data.txt";


#-------------------------------------------------------

open ( my $fh , '<:encoding(UTF-8)',$filename)
     or die "Could not exit the '$filename' $!";

    while (my $row = <$fh>){
    chomp ( $row);
    say "$row";
    }
say "\ndone";

