###
# Page options, layouts, aliases and proxies
###

set :markdown_engine, :redcarpet
set :markdown, :fenced_code_blocks => true, :smartypants => true

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

$integrations = [
  "aws",
]

# # Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# $integrations.each do |i|
#   proxy "/integrations/#{i}.html", "/integrations/show.html", locals: {
#           title: "#{i}",
#           integration: i,
#         }, ignore: true
# end

# General configuration

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

activate :directory_indexes

###
# Helpers
###

# Methods defined in the helpers block are available in templates
helpers do
  def app_host(path)
    if build?
      "https://app.parkingspot.bid#{path}"
    else
      "http://nanoyak.com:8081#{path}"
    end
  end
end

# Build-specific configuration
configure :build do
  # Minify CSS on build
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript
end
