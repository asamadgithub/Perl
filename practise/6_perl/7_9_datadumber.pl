#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper qw(Dumper);


my %a = (

   var1 => 111,
   var2 => 222,
   var3 => 333,

);

print Dumper \%a;
