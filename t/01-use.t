use strict;
use warnings;

use Test::More tests => 7;

BEGIN {
    use_ok( 'Config::Any' );
    use_ok( 'Config::Any::INI' );
    use_ok( 'Config::Any::JSON' );
    use_ok( 'Config::Any::Perl' );
    use_ok( 'Config::Any::XML' );
    use_ok( 'Config::Any::YAML' );
    use_ok( 'Config::Any::TT2' );
}
