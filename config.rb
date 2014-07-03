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

page '/Types-and-Programming-Languages/*',
  textbook: {
    title: 'Types and Programming Languages',
    link_htmls: [
      <<-__HTML__,
<a href="http://www.amazon.co.jp/gp/product/B00AJXZ5JE/ref=as_li_ss_il?ie=UTF8camp=247&amp;creative=7399&amp;creativeASIN=B00AJXZ5JE&amp;linkCode=as2&amp;tag=tokyoenvious-22"><img border="0" src="http://ws-fe.amazon-adsystem.com/widgets/q?_encoding=UTF8&amp;ASIN=B00AJXZ5JE&amp;Format=&amp;ID=AsinImage&amp;MarketPlace=JP&amp;ServiceVersion=20070822&amp;WS=1&amp;tag=tokyoenvious-22" ><br>Types and Programming Languages</a><img src="http://ir-jp.amazon-adsystem.com/e/ir?t=tokyoenvious-22&amp;l=as2&amp;o=9&amp;a=B00AJXZ5JE" width="1" height="1" border="0" alt="" style="border:none !important; margin:0px !important;" />
      __HTML__
      <<-__HTML__
<a href="http://www.amazon.co.jp/gp/product/4274069117/ref=as_li_ss_il?ie=UTF8&amp;camp=247&amp;creative=7399&amp;creativeASIN=4274069117&amp;linkCode=as2&amp;tag=tokyoenvious-22"><img border="0" src="http://ws-fe.amazon-adsystem.com/widgets/q?_encoding=UTF8&amp;ASIN=4274069117&amp;Format=&amp;ID=AsinImage&amp;MarketPlace=JP&amp;ServiceVersion=20070822&amp;WS=1&amp;tag=tokyoenvious-22" ><br>型システム入門</a><img src="http://ir-jp.amazon-adsystem.com/e/ir?t=tokyoenvious-22&amp;l=as2&amp;o=9&amp;a=4274069117" width="1" height="1" border="0" alt="" style="border:none !important; margin:0px !important;" />
      __HTML__
    ]
  }
