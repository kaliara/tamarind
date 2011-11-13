class ItemsSweeper < ActionController::Caching::Sweeper
  observe Item
  def after_update(item)
    expire_cache_for(item)
  end

  def after_destroy(item)
    expire_cache_for(item)
  end

  def after_create(item)
    expire_cache_for(item)
  end

private
  def expire_cache_for(item)
    expire_page(:controller => '/menus', :action => 'show', :slug => item.section.menu.slug)
  end
end
