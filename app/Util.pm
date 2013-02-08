# Len Dierickx © Copyright 2012 – All rights reserved
# $Id$ $Author$ $Date$
package Util;

use warnings;
use strict;
use utf8;

use vars qw( $VERSION @EXPORT_OK %EXPORT_TAGS );
use version; our $VERSION = qv('0.0.1');

use ConfigReader::Simple;
use FindBin;
use File::Spec;
use Cwd;

use Log::Log4perl;
use POSIX qw(strftime);

BEGIN {
    use base 'Exporter';
    our %EXPORT_TAGS =
      ( utils => [qw(debug babble logmessage has_protocol now time_hhmm)] );
    @EXPORT_OK = map @{ $EXPORT_TAGS{$_} } => keys %EXPORT_TAGS;

}

sub debug {
    if ( $ENV{DEBUG} ) {
        print {*STDERR} strftime( "\e[01m%Y-%m-%d %H:%M:%S UTC", gmtime() ),
          "> \e[30;01m[\e[00m", join( "\e[30;01m|\e[00m", @_ ),
          "\e[30;01m]\e[00m\n";
    }
    return;
}

sub babble {
    if ( $ENV{VERBOSE} ) {
        print join( q{ }, @_ ), "\n";
    }
    return;
}

Log::Log4perl->init("$ENV{APP_ROOT}/config/log4perl.conf");
our $logger = Log::Log4perl->get_logger("platoLogger");

sub logmessage {
    # my $e = strftime( "\e[01m%Y-%m-%d %H:%M:%S UTC", gmtime() ) .
    #   "> \e[30;01m[\e[00m" . join( "\e[30;01m|\e[00m", @_ ) .
    #   "\e[30;01m]\e[00m\n";
    $logger->error(@_);
    return;
}



sub now {
    my @months   = qw(Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec);
    my @weekDays = qw(Sun Mon Tue Wed Thu Fri Sat Sun);
    my (
        $seconds,    $minute,    $hour,
        $dayOfMonth, $month,     $yearOffset,
        $dayOfWeek,  $dayOfYear, $daylightSavings
    ) = gmtime();
    my $year      = 1900 + $yearOffset;
    my $theGMTime = "$year-$month-$dayOfWeek $hour:$minute:$seconds";
    return $theGMTime;
}

sub time_hhmm {
    my ( $start, $finish ) = @_;

    my $diff = defined $finish ? abs( $finish - $start ) : $start;

    my $days = int( $diff / ( 24 * 60 * 60 ) );
    $diff -= 24 * 60 * 60 * $days;
    my $hours = int( $diff / ( 60 * 60 ) );
    $diff -= 60 * 60 * $hours;
    my $mins = int( $diff / 60 );
    $diff -= 60 * $mins;

    my @parts;
    push @parts, sprintf "$days day%s",    $days > 1  ? 's' : '' if $days;
    push @parts, sprintf "$hours hour%s",  $hours > 1 ? 's' : '' if $hours;
    push @parts, sprintf "$mins minute%s", $mins > 1  ? 's' : '' if $mins;
    push @parts, sprintf "%.3f seconds",   $diff;

    return join " ", @parts;
}

1;

__END__

=encoding utf-8

=head1 NAME

Plato::Util — Easy website quality management: utility functions

=head1 VERSION

<Module::Name> version 0.0.1.

=head1 SYNOPSIS 

package Foo
use Plato::Util

# when C<$ENV{VERBOSE}> is set babble;
babble "Just babbling around";

# when C<$ENV{DEBUG}> is set babble;
debug "Listen!";

# return a fully qualified URI.
has_protocol($url);

=head1 DESCRIPTION

This module contains several utility functions used across Plato.

# logmessage
# This sub requires a full reference to another logging module.
logmessage "Spitting out some logmessage data";

=head1 SUBROUTINES/METHODS

=item * debug
=item * babble
=item * logmessage
=item * has_protocol
-item * now

=head1 DIAGNOSTICS

=head1 CONFIGURATION AND ENVIRONMENT

babble and debug depend on setting the ENV{VERBOSE} and ENV{DEBUG} variables.
This can be accomplished by using GetOpt::Long and speficiying the command line options as follow:

C<app --verbose --debug>

use GetOpt::Long;
my $options = GetOptions(
    verbose => sub { $ENV{VERBOSE} = 1 },
    debug => sub { $ENV{DEBUG} = 1 }
);

=head1 DEPENDENCIES 

None

=head1 INCOMPATIBILITIES

Undiscovered

=head1 BUGS AND LIMITATIONS

Undiscovered

=head1 AUTHOR 

<Pauli Henrik>, <Len Dierickx>

=head1 LICENSE AND COPYRIGHT

Copyright (c) 2013 Len Dierickx (len.dierickx@gmail.com). All rights reserved.

