package urltools

import (
    "fmt"
    "regexp"
)

const baseURL = "https://trystencil.org"

func HomeURL() string {
    return baseURL + "/"
}

func PageURL(name string) (string, error) {
    pages := map[string]string{
        "new": "/app/new",
        "generator": "/ai-tattoo-generator",
        "try_on": "/try-on",
        "pricing": "/pricing",
        "font": "/tattoo-font-generator",
        "stencil": "/stencil",
        "artists": "/artists",
        "stencil_maker": "/tattoo-stencil-maker",
        "how": "/how-it-works",
        "examples": "/examples",
    }
    path, ok := pages[name]
    if !ok {
        return "", fmt.Errorf("unknown page: %s", name)
    }
    return baseURL + path, nil
}

var ideaPattern = regexp.MustCompile(`^[a-z0-9]+(?:-[a-z0-9]+)*$`)

func IdeaURL(slug string) (string, error) {
    if !ideaPattern.MatchString(slug) {
        return "", fmt.Errorf("unknown idea: %s", slug)
    }
    return baseURL + "/ideas/" + slug + "", nil
}

func Metadata() map[string]string {
    return map[string]string{
        "name":        "TryStencil",
        "homepage":    HomeURL(),
        "description": "Offline URL builder for TryStencil tattoo generator, try-on, stencil, and idea pages. Not an official SDK.",
    }
}
