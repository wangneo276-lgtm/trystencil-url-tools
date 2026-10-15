import unittest
from trystencil_url_tools import home_url, metadata, page_url
from trystencil_url_tools import idea_url

class UrlTests(unittest.TestCase):
    def test_metadata(self):
        data = metadata()
        self.assertEqual(data["name"], "TryStencil")
        self.assertTrue(data["homepage"].startswith("https://"))
        self.assertEqual(data["homepage"], "https://trystencil.org/")
        self.assertNotIn(' ', data['homepage'])

    def test_home(self):
        self.assertEqual(home_url(), "https://trystencil.org/")

    def test_pages(self):
        self.assertEqual(page_url("new"), "https://trystencil.org/app/new")
        self.assertEqual(page_url("generator"), "https://trystencil.org/ai-tattoo-generator")
        self.assertEqual(page_url("try_on"), "https://trystencil.org/try-on")
        self.assertEqual(page_url("pricing"), "https://trystencil.org/pricing")
        self.assertEqual(page_url("font"), "https://trystencil.org/tattoo-font-generator")
        self.assertEqual(page_url("stencil"), "https://trystencil.org/stencil")
        self.assertEqual(page_url("artists"), "https://trystencil.org/artists")
        self.assertEqual(page_url("stencil_maker"), "https://trystencil.org/tattoo-stencil-maker")
        self.assertEqual(page_url("how"), "https://trystencil.org/how-it-works")
        self.assertEqual(page_url("examples"), "https://trystencil.org/examples")

    def test_unknown_page(self):
        with self.assertRaises(ValueError):
            page_url("not-a-page")

    def test_idea_url(self):
        self.assertEqual(idea_url("fine-line-wrist-tattoo"), "https://trystencil.org/ideas/fine-line-wrist-tattoo")
        with self.assertRaises(ValueError):
            idea_url("Not Valid")
        with self.assertRaises(ValueError):
            idea_url("../x")

if __name__ == '__main__':
    unittest.main()
