module TrystencilUrlTools
  BASE = "https://trystencil.org"
  PAGES = { "new" => "/app/new", "generator" => "/ai-tattoo-generator", "try_on" => "/try-on", "pricing" => "/pricing", "font" => "/tattoo-font-generator", "stencil" => "/stencil", "artists" => "/artists", "stencil_maker" => "/tattoo-stencil-maker", "how" => "/how-it-works", "examples" => "/examples" }
  def self.home_url
    BASE + "/"
  end

  def self.page_url(name)
    path = PAGES[name]
    raise ArgumentError, "unknown page: #{name}" if path.nil?
    BASE + path
  end

  def self.idea_url(slug)
    raise ArgumentError, "unknown idea: #{slug}" unless slug.match?(/\A[a-z0-9]+(?:-[a-z0-9]+)*\z/)
    BASE + "/ideas/" + slug
  end
end
