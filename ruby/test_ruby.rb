require_relative 'lib/trystencil_url_tools'
raise 'home' unless TrystencilUrlTools.home_url == "https://trystencil.org/"
raise 'page' unless TrystencilUrlTools.page_url("pricing") == "https://trystencil.org/pricing"
begin
  TrystencilUrlTools.page_url('not-a-page')
  raise 'page should fail'
rescue ArgumentError
end
raise 'extra' unless TrystencilUrlTools.idea_url("fine-line-wrist-tattoo") == "https://trystencil.org/ideas/fine-line-wrist-tattoo"
begin
  TrystencilUrlTools.idea_url('NOT A SLUG')
  raise 'extra should fail'
rescue ArgumentError
end
puts 'ok'
