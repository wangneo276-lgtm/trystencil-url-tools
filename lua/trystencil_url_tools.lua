local M = {}
local BASE = "https://trystencil.org"
local PAGES = { ["new"]="/app/new", ["generator"]="/ai-tattoo-generator", ["try_on"]="/try-on", ["pricing"]="/pricing", ["font"]="/tattoo-font-generator", ["stencil"]="/stencil", ["artists"]="/artists", ["stencil_maker"]="/tattoo-stencil-maker", ["how"]="/how-it-works", ["examples"]="/examples" }

function M.home_url()
  return BASE .. "/"
end

function M.page_url(name)
  local path = PAGES[name]
  if not path then error("unknown page: " .. tostring(name)) end
  return BASE .. path
end

function M.idea_url(slug)
  if not slug:match("^[a-z0-9%-]+$") or slug:sub(1,1) == "-" or slug:sub(-1) == "-" or slug:find("--", 1, true) then error("unknown idea: " .. tostring(slug)) end
  return BASE .. "/ideas/" .. slug
end
return M
