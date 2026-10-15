package TryStencil::UrlTools;
use strict;
use warnings;
our $VERSION = '0.1.1';
my $BASE = 'https://trystencil.org';
my %PAGES = (
        'new' => '/app/new',
        'generator' => '/ai-tattoo-generator',
        'try_on' => '/try-on',
        'pricing' => '/pricing',
        'font' => '/tattoo-font-generator',
        'stencil' => '/stencil',
        'artists' => '/artists',
        'stencil_maker' => '/tattoo-stencil-maker',
        'how' => '/how-it-works',
        'examples' => '/examples',
);

sub home_url { return $BASE . '/'; }

sub page_url {
    my ($name) = @_;
    die "unknown page: $name" unless exists $PAGES{$name // ''};
    return $BASE . $PAGES{$name};
}

sub idea_url {
    my ($slug) = @_;
    die "unknown idea: $slug" unless defined $slug && $slug =~ /\A[a-z0-9]+(?:-[a-z0-9]+)*\z/;
    return $BASE . '/ideas/' . $slug;
}
1;
