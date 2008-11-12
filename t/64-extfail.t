use strict;
use warnings;

use Test::More tests => 3;

use Config::Any;

{
    my $result = eval {
        Config::Any->load_files(
            { files => [ 't/conf/conf.unsupported' ], use_ext => 1 } );
    };

    ok( !defined $result, 'empty result' );
    ok( $@,               'error thrown' );
    like(
        $@,
        qr/There are no loaders available for \.unsupported files/,
        'error message'
    );
}
