# trystencil-url-tools

`trystencil-url-tools` builds canonical HTTPS URLs for [TryStencil](https://trystencil.org/).

Offline URL builder for TryStencil tattoo generator, try-on, stencil, and idea pages. Not an official SDK.

The helper only concatenates known page slugs. It does not call the site, upload files, or sign in.

## JavaScript

```js
import { pageUrl, pageUrl, pageUrl, pageUrl } from 'trystencil-url-tools';

pageUrl('new'); // https://trystencil.org/app/new
pageUrl('generator'); // https://trystencil.org/ai-tattoo-generator
pageUrl('try_on'); // https://trystencil.org/try-on
pageUrl('pricing'); // https://trystencil.org/pricing
```

## Python

```python
from trystencil_url_tools import page_url, page_url, page_url, page_url

page_url('new')  # https://trystencil.org/app/new
page_url('generator')  # https://trystencil.org/ai-tattoo-generator
page_url('try_on')  # https://trystencil.org/try-on
page_url('pricing')  # https://trystencil.org/pricing
```

The repository also contains equivalent Rust, PHP, and Go helpers, plus a small command that prints the same URLs.

Source: https://github.com/bbwdadfg/trystencil-url-tools

License: MIT.
