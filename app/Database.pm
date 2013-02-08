# Len Dierickx © Copyright 2013 – All rights reserved
# $Id: Database.pm 92 2013-01-11 13:24:57Z len.dierickx@gmail.com $ $Author: len.dierickx@gmail.com $ $Date: 2013-01-11 14:24:57 +0100 (Fri, 11 Jan 2013) $
package Database;

# use 'Ima:DBI';
use base 'Ima::DBI';

use strict;
use warnings;

use version; our $VERSION = qv('0.0.1');
use FindBin;
use File::Spec;
use Cwd;

use ConfigReader::Simple;
my $config = ConfigReader::Simple->new("./config/app.config");

my $db_name     = $config->get('db_name');
my $data_source = $config->get('data_source');
my $user        = $config->get('user');
my $password    = $config->get('password');
my %attr        = ( 'mysql_enable_utf8' => 1 );

# One database connection only.
Database->set_db( $db_name, $data_source, $user, $password, \%attr );

Database->set_sql( 'GetAccounts', 'SELECT ID, account FROM accounts;', $db_name );

Database->set_sql( 'InsertAccountID',
    'INSERT INTO accounts(twitter_id) VALUE(?);', $db_name );

Database->set_sql(
    'InsertAccountInfo',
'INSERT INTO accountInformation(time,friends_count,location,lang,followers_count,statuses_count,name,description,favourites_count,listed_count,created_at,utc_offset,time_zone) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);',
    $db_name
);

1;

__END__

=encoding utf-8

=head1 NAME

Database — Singleton class for database calls. This class consolidates all SQL queries.

=head1 VERSION

<Module::Name> version 0.0.1.

=head1 SYNOPSIS 

=head1 DESCRIPTION

=head1 SUBROUTINES/METHODS

=head1 DIAGNOSTICS

=head1 CONFIGURATION AND ENVIRONMENT

=head1 DEPENDENCIES 

None

=head1 INCOMPATIBILITIES

Undiscovered

=head1 BUGS AND LIMITATIONS

Undiscovered

=head1 AUTHOR 

<Len Dierickx>

=head1 LICENSE AND COPYRIGHT

Copyright (c) 2013 Len Dierickx (len.dierickx@gmail.com). All rights reserved.
