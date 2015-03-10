#!perl

use strict;
use warnings;
use Test::More;

BEGIN {
    use_ok 'Catmandu::Fix::time_travel';
    use_ok 'Memento::TimeTravel';
}

done_testing 2;
