#!/usr/bin/perl
use strict;
use warnings;
use 5.010;
use Getopt::Long qw(GetOptions);
 
my $f1="dafault_1";
my $f2="default_2";
#my $f3;
#my $f4;




GetOptions('--first=s' => \$f1,
           '--second=s' => \$f2,
          ) or die "Usage: $0 --from NAME\n";

say "$f1";
say "$f2";
