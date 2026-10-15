using System;
using System.Collections.Generic;
using System.Text.RegularExpressions;

namespace TryStencil.UrlTools;

public static partial class Urls
{
    public const string Base = "https://trystencil.org";
    private static readonly Dictionary<string, string> Pages = new()
    {
        { "new", "/app/new" },
        { "generator", "/ai-tattoo-generator" },
        { "try_on", "/try-on" },
        { "pricing", "/pricing" },
        { "font", "/tattoo-font-generator" },
        { "stencil", "/stencil" },
        { "artists", "/artists" },
        { "stencil_maker", "/tattoo-stencil-maker" },
        { "how", "/how-it-works" },
        { "examples", "/examples" },
    };

    public static string HomeUrl() => Base + "/";

    public static string PageUrl(string name)
    {
        if (!Pages.TryGetValue(name, out var path))
            throw new ArgumentException("unknown page: " + name);
        return Base + path;
    }

    public static string IdeaUrl(string slug)
    {
        if (string.IsNullOrEmpty(slug) || !IdeaPattern().IsMatch(slug))
            throw new ArgumentException("unknown idea: " + slug);
        return Base + "/ideas/" + slug;
    }
    [GeneratedRegex("^[a-z0-9]+(?:-[a-z0-9]+)*$")]
    private static partial System.Text.RegularExpressions.Regex IdeaPattern();
}
