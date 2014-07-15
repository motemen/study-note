configure :development do
  activate :livereload
end

set :css_dir,    'stylesheets'
set :js_dir,     'javascripts'
set :images_dir, 'images'

config[:file_watcher_ignore] << /\.sw.$/

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

  def sibling_resources
    paths = current_resource.path.split('/')
    sitemap.resources.select do |r|
      r.path.split('/').first == paths.first
    end.sort_by do |r|
      filename = r.path.split('/').last
      filename = "00_#{filename}" if /^index\b/ === filename
      filename
    end
  end

  def next_resource
    rr = sibling_resources
    i = rr.find_index { |r| r.path == current_resource.path }
    rr[i+1]
  end

  def prev_resource
    rr = sibling_resources
    i = rr.find_index { |r| r.path == current_resource.path }
    return nil if i == 0
    rr[i-1]
  end
end
