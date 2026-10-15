use strict;
use warnings;
use Test::More tests => 2;
use lib 'lib';
use TryStencil::UrlTools;
is(TryStencil::UrlTools::home_url(), 'https://trystencil.org/', 'home');
is(TryStencil::UrlTools::idea_url('fine-line-wrist-tattoo'), 'https://trystencil.org/ideas/fine-line-wrist-tattoo', 'extra');
