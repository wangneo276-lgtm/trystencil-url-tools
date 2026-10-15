const BASE = "https://trystencil.org";
const PAGES = {"new": "/app/new", "generator": "/ai-tattoo-generator", "try_on": "/try-on", "pricing": "/pricing", "font": "/tattoo-font-generator", "stencil": "/stencil", "artists": "/artists", "stencil_maker": "/tattoo-stencil-maker", "how": "/how-it-works", "examples": "/examples"};

function join(path) {
  return BASE + path;
}

export function homeUrl() {
  return BASE + '/';
}

export function pageUrl(name) {
  if (!Object.prototype.hasOwnProperty.call(PAGES, name)) {
    throw new Error(`unknown page: ${name}`);
  }
  return join(PAGES[name]);
}

export function ideaUrl(slug) {
  if (!/^[a-z0-9]+(?:-[a-z0-9]+)*$/.test(slug)) {
    throw new Error(`unknown idea: ${slug}`);
  }
  return join("/ideas/" + slug + "");
}

export function metadata() {
  const canonicalPages = { home: homeUrl() };
  for (const name of Object.keys(PAGES)) canonicalPages[name] = pageUrl(name);
  canonicalPages.idea = ideaUrl("fine-line-wrist-tattoo");
  return {
    name: "TryStencil",
    homepage: homeUrl(),
    description: "Offline URL builder for TryStencil tattoo generator, try-on, stencil, and idea pages. Not an official SDK.",
    canonicalPages,
    tags: ["tattoo", "stencil", "url-builder"],
  };
}
