# Len Dierickx © Copyright 2012 – All rights reserved
# $Id$ $Author$ $Date$
package Followers;

use warnings;
use strict;
use utf8;

use feature qw(switch);
use version; our $VERSION = qv('0.0.1');

use Database;
use Net::Twitter;
use Data::Dumper;
use ConfigReader::Simple;
use Time::Piece::MySQL;

my $config = ConfigReader::Simple->new("./config/app.config");

my $ff_consumer_key        = $config->get('ff_consumer_key');
my $ff_consumer_secret     = $config->get('ff_consumer_secret');
my $ff_access_token        = $config->get('ff_access_token');
my $ff_access_token_secret = $config->get('ff_access_token_secret');

sub new {
    my $class = shift;

    ## Initialisation can be given as a hashref or as a raw list of key-value pairs.  Up to you.
    my %config;
    if ( ref $_[0] eq 'HASH' ) {
        %config = %{ $_[0] };
    }
    else {
        %config = @_;
    }

    ## CHANGED override mode settings from command line options?
    my $self = { v => $config{verbose} };

    bless $self, $class;
    $self->{app} = $self->_oauthTwitter();

    # print ref($self->{app});

    return $self;
}

sub _oauthTwitter {
    my $self = shift;

    my $nt = Net::Twitter->new(
        traits              => [qw/OAuth API::REST RateLimit/],
        consumer_key        => $ff_consumer_key,
        consumer_secret     => $ff_consumer_secret,
        access_token        => $ff_access_token,
        access_token_secret => $ff_access_token_secret,
    );

    return $nt;

}

# queries teh db
# returns array with all accounts
sub getAccounts {
    my $self = shift;

    # check user and client
    my $sth = Database->sql_GetAccounts;

    # bind_params, execute & bind_columns
    $sth->execute();

    my @accounts = $sth->fetchall();

    return @accounts;
}

sub chunckedAccounts {
    my $self = shift;

    my @accArrays = $self->getAccounts();
    push @accArrays, [ splice( @accounts, 0, 100 ) ] while @accounts;

    return @accArrays;
}

# requires 100 twitter accounts
# populates database with infor from tiwtter accounts
sub lookupAccounts {
    my $self = shift;

    # Getting an Oauth references
    # my $nt = Net::Twitter->new(
    #            traits              => [qw/OAuth API::REST RateLimit/],
    #            consumer_key        => $ff_consumer_key,
    #            consumer_secret     => $ff_consumer_secret,
    #            access_token        => $ff_access_token,
    #            access_token_secret => $ff_access_token_secret,
    #        );
    my @accArrays = $self->chunckedAccounts();
    my $app       = $self->{app};
    my @results;
    foreach my $accArray (@accArrays) {
        push @results, ( $app->lookup_users( { screen_name => $accArray->[0] } ) );
    }
    print
    return @results;
}

sub populateDatabase {
    my $self = shift;

    my @accountData = $self->lookupAccounts();

    my %db_data;

    foreach my $data (@accountData) {
        foreach (@$data) {
            my $user = $_;

            $db_data{'id'} = $user->{"id"};

            eval { Database->InsertAccountID->execute( $db_data{'id'} ); };
              unless ($@)
            {
                Database->commit;
            }
            else {
                Database->rollback('twitterMine');
            }
            my $time = localtime;
                       $db_data{'account_id'}       = undef;
                       $db_data{'time'}             = $time->mysql_datetime;
                       $db_data{'screen_name'}      = $user->{"screen_name"} | '';
                       $db_data{'friends_count'}    = $user->{"friends_count"} | '';
                       $db_data{'location'}         = $user->{"location"} | '';
                       $db_data{'lang'}             = $user->{"lang"} | '';
                       $db_data{'followers_count'}  = $user->{"followers_count"} | '';
                       $db_data{'statuses_count'}   = $user->{"statuses_count"} | '';
                       $db_data{'name'}             = $user->{"name"} | '';
                       $db_data{'description'}      = $user->{"description"} | '';
                       $db_data{'favourites_count'} = $user->{"favourites_count"} | '';
                       $db_data{'listed_count'}     = $user->{"listed_count"} | '';
                       $db_data{'created_at'}       = $user->{"created_at"} | '';
                       $db_data{'utc_offset'}       = $user->{"utc_offset"} | '';
                       $db_data{'time_zone'}        = $user->{"time_zone"} | '';
           
            $self->_updateDatabase(%db_data);
        }
    }
}

sub _updateDatabase {
    my $self = shift;
    my %db_data = @_;

    eval {
        Database->sql_InsertAccountInfo->execute(

            # TODO Forgto twitter
            # TODO forgot screenname

            $db_data{'account_id'},
            $db_data{'time'},
            $db_data{'friends_count'},
            $db_data{'location'},
            $db_data{'lang'},
            $db_data{'followers_count'},
            $db_data{'statuses_count'},
            $db_data{'name'},
            $db_data{'description'},
            $db_data{'favourites_count'},
            $db_data{'listed_count'},
            $db_data{'created_at'},
            $db_data{'utc_offset'},
            $db_data{'time_zone'},
            $db_data{'screen_name'},

        );
    };
    unless ($@) {
        Database->commit;
    }
    else {
        Database->rollback('twitterMine');
    }
}

1;

__END__

=encoding utf-8

=head1 NAME

Plato — Easy website quality management: spider

=head1 DESCRIPTION

This is the main class of Plato, attempting to implement the bot itself.
