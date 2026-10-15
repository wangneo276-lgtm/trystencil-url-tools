#!/bin/sh
set -eu
base="https://trystencil.org"
cmd="${1:-}"
case "$cmd" in
  home)
    printf "%s\n" "$base/"
    ;;
  page)
    case "${2:-}" in
      new) printf '%s\n' "$base/app/new" ;;
      generator) printf '%s\n' "$base/ai-tattoo-generator" ;;
      try_on) printf '%s\n' "$base/try-on" ;;
      pricing) printf '%s\n' "$base/pricing" ;;
      font) printf '%s\n' "$base/tattoo-font-generator" ;;
      stencil) printf '%s\n' "$base/stencil" ;;
      artists) printf '%s\n' "$base/artists" ;;
      stencil_maker) printf '%s\n' "$base/tattoo-stencil-maker" ;;
      how) printf '%s\n' "$base/how-it-works" ;;
      examples) printf '%s\n' "$base/examples" ;;
      *) echo "unknown page" >&2; exit 2 ;;
    esac
    ;;
  idea)
    slug="${2:-}"
    printf '%s' "$slug" | grep -Eq '^[a-z0-9]+(-[a-z0-9]+)*$' || { echo "unknown idea" >&2; exit 2; }
    printf "%s\n" "$base/ideas/$slug"
    ;;
  *)
    echo "usage: trystencil-url-tools home | page <name> | idea <slug>" >&2
    exit 2
    ;;
esac
