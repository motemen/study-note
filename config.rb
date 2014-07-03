configure :development do
  activate :livereload
end

set :css_dir,    'stylesheets'
set :js_dir,     'javascripts'
set :images_dir, 'images'

config[:file_watcher_ignore] << /\.sw.$/

set :asciidoc_attributes, %w(sectanchors)

set :relative_links, true
activate :relative_assets
