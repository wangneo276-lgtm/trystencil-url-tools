from __future__ import annotations

_BASE = "https://trystencil.org"
_BRAND = "TryStencil"
_DESCRIPTION = "Offline URL builder for TryStencil tattoo generator, try-on, stencil, and idea pages. Not an official SDK."
_TAGS = ["tattoo", "stencil", "url-builder"]
_PAGES = {
    "new": "/app/new",
    "generator": "/ai-tattoo-generator",
    "try_on": "/try-on",
    "pricing": "/pricing",
    "font": "/tattoo-font-generator",
    "stencil": "/stencil",
    "artists": "/artists",
    "stencil_maker": "/tattoo-stencil-maker",
    "how": "/how-it-works",
    "examples": "/examples"
}


def _join(path: str) -> str:
    return _BASE + path

def home_url() -> str:
    return _BASE + "/"

def page_url(name: str) -> str:
    try:
        path = _PAGES[name]
    except KeyError:
        raise ValueError(f"unknown page: {name}") from None
    return _join(path)

def idea_url(slug: str) -> str:
    if not __import__('re').fullmatch(r'[a-z0-9]+(?:-[a-z0-9]+)*', slug):
        raise ValueError(f"unknown idea: {slug}")
    return _join("/ideas/" + slug + "")

def metadata() -> dict[str, object]:
    pages = {'home': home_url()}
    for name in _PAGES:
        pages[name] = page_url(name)
    pages.update({
        "idea": idea_url("fine-line-wrist-tattoo"),
    })
    return {
        "name": _BRAND,
        "homepage": home_url(),
        "description": _DESCRIPTION,
        "canonicalPages": pages,
        "tags": list(_TAGS),
    }
