use trystencil_url_tools::{home_url, metadata, page_url};
use trystencil_url_tools::idea_url;

#[test]
fn metadata_has_homepage() {
    let data = metadata();
    assert!(data.iter().any(|(k, v)| *k == "name" && v == "TryStencil"));
    assert!(data.iter().any(|(k, v)| *k == "homepage" && v == "https://trystencil.org/"));
}

#[test]
fn pages_match() {
    assert_eq!(page_url("new").unwrap(), "https://trystencil.org/app/new");
    assert_eq!(page_url("generator").unwrap(), "https://trystencil.org/ai-tattoo-generator");
    assert_eq!(page_url("try_on").unwrap(), "https://trystencil.org/try-on");
    assert_eq!(page_url("pricing").unwrap(), "https://trystencil.org/pricing");
    assert_eq!(page_url("font").unwrap(), "https://trystencil.org/tattoo-font-generator");
    assert_eq!(page_url("stencil").unwrap(), "https://trystencil.org/stencil");
    assert_eq!(page_url("artists").unwrap(), "https://trystencil.org/artists");
    assert_eq!(page_url("stencil_maker").unwrap(), "https://trystencil.org/tattoo-stencil-maker");
    assert_eq!(page_url("how").unwrap(), "https://trystencil.org/how-it-works");
    assert_eq!(page_url("examples").unwrap(), "https://trystencil.org/examples");
    assert!(page_url("not-a-page").is_err());
}

#[test]
fn idea_url_matches() {
    assert_eq!(idea_url("fine-line-wrist-tattoo").unwrap(), "https://trystencil.org/ideas/fine-line-wrist-tattoo");
    assert!(idea_url("Not Valid").is_err());
    assert!(idea_url("../x").is_err());
}
