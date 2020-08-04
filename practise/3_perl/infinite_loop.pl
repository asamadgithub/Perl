#!/usr/bin/perl
use strict;
use warnings;
use 5.010;



# variables declared --------------------

my $name;




#-----------------------------------------

while (42) {

say "\nWhich Programming language you are using \n";

$name = <STDIN>;
chomp $name;

say "\nThe input was $name "; 
       if ( $name eq 'perl'){
       
       last;
       
       }
   
     say "\n Wrong Try again ";

}

say 'done with it';
