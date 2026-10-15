class Urls {
  static const base = 'https://trystencil.org';
  static const pages = <String, String>{ 'new': '/app/new', 'generator': '/ai-tattoo-generator', 'try_on': '/try-on', 'pricing': '/pricing', 'font': '/tattoo-font-generator', 'stencil': '/stencil', 'artists': '/artists', 'stencil_maker': '/tattoo-stencil-maker', 'how': '/how-it-works', 'examples': '/examples' };
  String homeUrl() => base + '/';
  String pageUrl(String name) {
    final path = pages[name];
    if (path == null) throw ArgumentError('unknown page: $name');
    return base + path;
  }

  String idea_url(String slug) {
    if (!RegExp(r'^[a-z0-9]+(?:-[a-z0-9]+)*$').hasMatch(slug)) {
      throw ArgumentError('unknown idea: $slug');
    }
    return base + '/ideas/' + slug;
  }
}
