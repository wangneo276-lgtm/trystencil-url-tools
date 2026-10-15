use strict;
use warnings;
use ExtUtils::MakeMaker;
WriteMakefile(
    NAME => 'TryStencil::UrlTools',
    VERSION_FROM => 'lib/TryStencil/UrlTools.pm',
    ABSTRACT => 'Offline URL helpers for TryStencil',
    AUTHOR => 'bbwdadfg',
    LICENSE => 'mit',
    META_MERGE => { resources => { homepage => 'https://trystencil.org/', repository => 'https://github.com/wangneo276-lgtm/trystencil-url-tools' } },
);
