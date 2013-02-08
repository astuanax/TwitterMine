#!/usr/bin/env perl
# Len Dierickx © Copyright 2013 – All rights reserved
# $Id$ $Author$ $Date$

use warnings;
use strict;
use utf8;

use FindBin;
use File::Spec;
use Cwd;
use Data::Dumper;

BEGIN {
    $ENV{APP_ROOT} = Cwd::realpath( File::Spec->rel2abs($FindBin::Bin) );
}
use lib ( $ENV{APP_ROOT} );

use Followers;

my $followers = Followers->new();
$followers->populateDatabase();