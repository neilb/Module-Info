use strict;
use warnings;

use Test::More tests => 3;

use lib 't/lib';

use Module::Info;

like( Module::Info->new_from_module('Moo')->has_pod => qr/Moo\.pm$/, "inlined POD" );
like( Module::Info->new_from_module('Boo')->has_pod => qr/Boo\.pod$/, "companion POD file" );
is( Module::Info->new_from_module('Roo')->has_pod => undef, "no POD" );

