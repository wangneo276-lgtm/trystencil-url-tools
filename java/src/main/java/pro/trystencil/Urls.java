package pro.trystencil;

import java.util.HashMap;
import java.util.Map;

public final class Urls {
    public static final String BASE = "https://trystencil.org";
    private static final Map<String, String> PAGES = new HashMap<>();
    static {
        PAGES.put("new", "/app/new");
        PAGES.put("generator", "/ai-tattoo-generator");
        PAGES.put("try_on", "/try-on");
        PAGES.put("pricing", "/pricing");
        PAGES.put("font", "/tattoo-font-generator");
        PAGES.put("stencil", "/stencil");
        PAGES.put("artists", "/artists");
        PAGES.put("stencil_maker", "/tattoo-stencil-maker");
        PAGES.put("how", "/how-it-works");
        PAGES.put("examples", "/examples");
    }
    private Urls() {}
    public static String homeUrl() { return BASE + "/"; }
    public static String pageUrl(String name) {
        String path = PAGES.get(name);
        if (path == null) throw new IllegalArgumentException("unknown page: " + name);
        return BASE + path;
    }

    public static String ideaUrl(String slug) {
        if (slug == null || !slug.matches("[a-z0-9]+(?:-[a-z0-9]+)*")) {
            throw new IllegalArgumentException("unknown idea: " + slug);
        }
        return BASE + "/ideas/" + slug;
    }
}
