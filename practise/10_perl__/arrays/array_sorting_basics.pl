#!/usr/bin/perl
use strict;
use warnings;


my @a=(
[4,10,2,3],
[2,1,3],
);
my  @ref1 =\@a;
my ($r1,$r2)=@a;
foreach my $i(@a){
  print "$i\t";
   }
my $q= scalar @{$a[0]};
print "qqqqq -------> $q";
print "\n\n\n";
print "@{$a[0]},,\n";
my @s1= sort {$b<=>$a}@a;
my @s2= sort {$a<=>$b}@{$a[0]};
#$a->[1]<=>$b->[1]||
#$a->[2]<=>$b->[2]
#}@a;

my @s3= sort {$b->[0]<=>$a->[0]}@a;


print "@s2\n";
#foreach my $i(@s1){
# print "$i\t";
#    }
#print "\n";
#foreach my $i(0){
#   foreach my $j(0..2){
#    print "$s2[$i][$j]\t";
#   }
# print "\n";
# }   
   




print "\n+++++++++\n";

my @b= (
[1,3,5,6,7],
[3,4,5,6,7],
[1,2,3,4,5],
[5,6,7,8,8],
[1,2,3,4,5],
[2,2,2,2,2],
[1,1,2,4,5],
[2,3,4,5,6],
);



