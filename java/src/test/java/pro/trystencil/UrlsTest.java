package pro.trystencil;
public final class UrlsTest {
    public static void main(String[] args) {
        if (!Urls.homeUrl().equals("https://trystencil.org/")) throw new AssertionError("home");
        if (!Urls.pageUrl("pricing").equals("https://trystencil.org/pricing")) throw new AssertionError("page");
if (!Urls.ideaUrl("fine-line-wrist-tattoo").equals("https://trystencil.org/ideas/fine-line-wrist-tattoo")) throw new AssertionError("extra");
        System.out.println("ok");
    }
}
