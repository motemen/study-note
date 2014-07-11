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

activate :directory_indexes

helpers do
  def each_dir(&block)
    sitemap.resources.select do |r|
      /(?<!index)\.html$/ === r.path
    end.group_by do |r|
      r.path[%r([^/]+)]
    end.each(&block)
  end
end
