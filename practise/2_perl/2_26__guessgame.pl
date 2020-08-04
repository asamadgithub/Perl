#!/usr/bin/perl

use strict;
use warnings;

#-----------------------------------------------------------------------------------------


my $number = 200;

my $random_number = int rand(200) ;

print "The program generated number is $random_number \n";


print "Enter your guess ";
my $guess = <STDIN>;

if ($guess == $random_number)
	{
	print "You are absolutely right";
	}


elsif ($guess < $random_number )
	{
	print "Enter number is too less \n";
	}

else
	{
	print "Entered number is far above \n";
	}


