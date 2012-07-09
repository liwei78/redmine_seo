# liwei created at 2012-7-9
# 0.0.1 basic
require 'redmine'
require 'dispatcher'

Dispatcher.to_prepare :redmine_seo do
    unless ActionView::Base.included_modules.include?(MetaHelper)
        ActionView::Base.send(:include, MetaHelper)
    end
end

Redmine::Plugin.register :redmine_seo do
  name 'Redmine SEO plugin'
  author 'Riquel Li'
  description 'SEO on cocos2d-x.org'
  version '0.0.1'
  url 'http://railser.cn'
  author_url 'http://railser.cn/me'

end

