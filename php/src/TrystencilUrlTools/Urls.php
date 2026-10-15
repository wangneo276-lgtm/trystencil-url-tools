<?php

declare(strict_types=1);

namespace TrystencilUrlTools;

final class Urls
{
    private const BASE = 'https://trystencil.org';

    /** @return array<string, mixed> */
    public static function metadata(): array
    {
        return [
            'name' => 'TryStencil',
            'homepage' => self::homeUrl(),
            'description' => 'Offline URL builder for TryStencil tattoo generator, try-on, stencil, and idea pages. Not an official SDK.',
            'canonicalPages' => array_merge(
                ['home' => self::homeUrl()],
                [
                    'new' => self::pageUrl('new'),
                    'generator' => self::pageUrl('generator'),
                    'try_on' => self::pageUrl('try_on'),
                    'pricing' => self::pageUrl('pricing'),
                    'font' => self::pageUrl('font'),
                    'stencil' => self::pageUrl('stencil'),
                    'artists' => self::pageUrl('artists'),
                    'stencil_maker' => self::pageUrl('stencil_maker'),
                    'how' => self::pageUrl('how'),
                    'examples' => self::pageUrl('examples'),
                ],
            ),
            'tags' => ['tattoo', 'stencil', 'url-builder'],
        ];
    }

    public static function homeUrl(): string
    {
        return self::BASE . '/';
    }

    public static function pageUrl(string $name): string
    {
        $pages = [
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
        ];
        if (!array_key_exists($name, $pages)) {
            throw new \InvalidArgumentException('unknown page: ' . $name);
        }
        return self::BASE . $pages[$name];
    }

    public static function ideaUrl(string $slug): string
    {
        if (preg_match('/^[a-z0-9]+(?:-[a-z0-9]+)*$/', $slug) !== 1) {
            throw new \InvalidArgumentException('unknown idea: ' . $slug);
        }
        return self::BASE . '/ideas/' . $slug . '';
    }

}
