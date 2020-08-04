#!/usr/bin/perl
use strict;
use warnings;


my $filename = shift or die "Prove the file in command_line $0";

open (my $fh ,'<',$filename) or die "Could not open the '$filename'.$0";

  while (my $line = <$fh>){
    chomp $line;
    
#hexadecimal ($line);

binary ($line);

}


sub hexadecimal {
 foreach my $x(@_){
   if ( $x =~ /^0x[\da-fA-F]{1,}$/){
       print "$x\n";
  }
 } 
}



sub binary {
   foreach my $x(@_){
     if ( $x =~ /^0b[01]{1,}$/){
        print "$x\n";
   }
  }
 }

