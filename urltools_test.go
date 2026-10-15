package urltools

import "testing"

func TestMetadata(t *testing.T) {
    data := Metadata()
    if data["name"] != "TryStencil" {
        t.Fatalf("brand %s", data["name"])
    }
    if data["homepage"] != "https://trystencil.org/" {
        t.Fatalf("homepage %s", data["homepage"])
    }
}

func TestPages(t *testing.T) {
    {
        got, err := PageURL("new")
        if err != nil { t.Fatal(err) }
        if got != "https://trystencil.org/app/new" { t.Fatalf("%s", got) }
    }
    {
        got, err := PageURL("generator")
        if err != nil { t.Fatal(err) }
        if got != "https://trystencil.org/ai-tattoo-generator" { t.Fatalf("%s", got) }
    }
    {
        got, err := PageURL("try_on")
        if err != nil { t.Fatal(err) }
        if got != "https://trystencil.org/try-on" { t.Fatalf("%s", got) }
    }
    {
        got, err := PageURL("pricing")
        if err != nil { t.Fatal(err) }
        if got != "https://trystencil.org/pricing" { t.Fatalf("%s", got) }
    }
    {
        got, err := PageURL("font")
        if err != nil { t.Fatal(err) }
        if got != "https://trystencil.org/tattoo-font-generator" { t.Fatalf("%s", got) }
    }
    {
        got, err := PageURL("stencil")
        if err != nil { t.Fatal(err) }
        if got != "https://trystencil.org/stencil" { t.Fatalf("%s", got) }
    }
    {
        got, err := PageURL("artists")
        if err != nil { t.Fatal(err) }
        if got != "https://trystencil.org/artists" { t.Fatalf("%s", got) }
    }
    {
        got, err := PageURL("stencil_maker")
        if err != nil { t.Fatal(err) }
        if got != "https://trystencil.org/tattoo-stencil-maker" { t.Fatalf("%s", got) }
    }
    {
        got, err := PageURL("how")
        if err != nil { t.Fatal(err) }
        if got != "https://trystencil.org/how-it-works" { t.Fatalf("%s", got) }
    }
    {
        got, err := PageURL("examples")
        if err != nil { t.Fatal(err) }
        if got != "https://trystencil.org/examples" { t.Fatalf("%s", got) }
    }
    if _, err := PageURL("not-a-page"); err == nil { t.Fatal("expected error") }
}

func TestIdeaURL(t *testing.T) {
    {
        got, err := IdeaURL("fine-line-wrist-tattoo")
        if err != nil { t.Fatal(err) }
        if got != "https://trystencil.org/ideas/fine-line-wrist-tattoo" { t.Fatalf("%s", got) }
    }
    if _, err := IdeaURL("Not Valid"); err == nil { t.Fatal("expected error") }
}
