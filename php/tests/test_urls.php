<?php

declare(strict_types=1);

require __DIR__ . '/../src/TrystencilUrlTools/Urls.php';

use TrystencilUrlTools\Urls;

function expect(bool $ok, string $message): void
{
    if (!$ok) {
        fwrite(STDERR, $message . PHP_EOL);
        exit(1);
    }
}

$meta = Urls::metadata();
expect($meta['name'] === 'TryStencil', 'brand');
expect($meta['homepage'] === 'https://trystencil.org/', 'homepage');
expect(!str_contains($meta['homepage'], ' '), 'space');
expect(Urls::pageUrl('new') === 'https://trystencil.org/app/new', 'page new');
expect(Urls::pageUrl('generator') === 'https://trystencil.org/ai-tattoo-generator', 'page generator');
expect(Urls::pageUrl('try_on') === 'https://trystencil.org/try-on', 'page try_on');
expect(Urls::pageUrl('pricing') === 'https://trystencil.org/pricing', 'page pricing');
expect(Urls::pageUrl('font') === 'https://trystencil.org/tattoo-font-generator', 'page font');
expect(Urls::pageUrl('stencil') === 'https://trystencil.org/stencil', 'page stencil');
expect(Urls::pageUrl('artists') === 'https://trystencil.org/artists', 'page artists');
expect(Urls::pageUrl('stencil_maker') === 'https://trystencil.org/tattoo-stencil-maker', 'page stencil_maker');
expect(Urls::pageUrl('how') === 'https://trystencil.org/how-it-works', 'page how');
expect(Urls::pageUrl('examples') === 'https://trystencil.org/examples', 'page examples');
try { Urls::pageUrl('not-a-page'); expect(false, 'unknown page should throw'); } catch (InvalidArgumentException $e) {}
expect(Urls::ideaUrl('fine-line-wrist-tattoo') === 'https://trystencil.org/ideas/fine-line-wrist-tattoo', 'ideaUrl');
try { Urls::ideaUrl('Not Valid'); expect(false, 'bad idea'); } catch (InvalidArgumentException $e) {}
fwrite(STDOUT, "ok\n");
