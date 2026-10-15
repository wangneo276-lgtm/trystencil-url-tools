const BASE: &str = "https://trystencil.org";

fn join(path: &str) -> String {
    format!("{BASE}{path}")
}

pub fn home_url() -> String {
    format!("{BASE}/")
}

pub fn page_url(name: &str) -> Result<String, &'static str> {
    let path = match name {
        "new" => "/app/new",
        "generator" => "/ai-tattoo-generator",
        "try_on" => "/try-on",
        "pricing" => "/pricing",
        "font" => "/tattoo-font-generator",
        "stencil" => "/stencil",
        "artists" => "/artists",
        "stencil_maker" => "/tattoo-stencil-maker",
        "how" => "/how-it-works",
        "examples" => "/examples",
        _ => return Err("unknown page"),
    };
    Ok(join(path))
}

pub fn idea_url(slug: &str) -> Result<String, &'static str> {
    if slug.is_empty() || !slug.chars().all(|c| c.is_ascii_lowercase() || c.is_ascii_digit() || c == '-') {
        return Err("unknown idea");
    }
    if slug.starts_with('-') || slug.ends_with('-') || slug.contains("--") {
        return Err("unknown idea");
    }
    Ok(join(&format!("/ideas/{slug}")))
}

pub fn metadata() -> Vec<(&'static str, String)> {
    vec![
        ("name", "TryStencil".to_string()),
        ("homepage", home_url()),
        ("description", "Offline URL builder for TryStencil tattoo generator, try-on, stencil, and idea pages. Not an official SDK.".to_string()),
    ]
}
