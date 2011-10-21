#!/usr/bin/perl
#
# Choose between the values matched between 'or' in input
# Must be alphabetic values

use strict;
use warnings;

#my $q_check_lc = 'this or 2 or none';
my $q_check = 'this or that or none';
my $answer_results = '';
my $answer_type = '';

if ( $q_check =~ m/^\!?\s*[A-Za-z]+(\s+or\s+[A-Za-z]+)+\s*$/ ) {
    my @choices = split(/\s+or\s+/, $q_check);
    my $choice = int(rand(@choices));

    $answer_results = $choices[$choice];
    $answer_results .= ' (random)';
    $answer_type = 'rand';
}

print qq($answer_type\t$answer_results\n);
