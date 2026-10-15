const BASE = "https://trystencil.org";
const PAGES: Record<string, string> = { "new": "/app/new", "generator": "/ai-tattoo-generator", "try_on": "/try-on", "pricing": "/pricing", "font": "/tattoo-font-generator", "stencil": "/stencil", "artists": "/artists", "stencil_maker": "/tattoo-stencil-maker", "how": "/how-it-works", "examples": "/examples" };
export function homeUrl(): string { return BASE + "/"; }
export function pageUrl(name: string): string {
  const path = PAGES[name];
  if (!path) throw new Error("unknown page: " + name);
  return BASE + path;
}

export function ideaUrl(slug: string): string {
  if (!/^[a-z0-9]+(?:-[a-z0-9]+)*$/.test(slug)) throw new Error("unknown idea: " + slug);
  return BASE + "/ideas/" + slug;
}
