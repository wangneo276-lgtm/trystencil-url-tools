local M = require 'trystencil_url_tools'
assert(M.home_url() == 'https://trystencil.org/')
assert(M.page_url('pricing') == 'https://trystencil.org/pricing')
assert(M.idea_url('fine-line-wrist-tattoo') == 'https://trystencil.org/ideas/fine-line-wrist-tattoo')
print('ok')
