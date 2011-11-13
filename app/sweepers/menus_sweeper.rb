class MenusSweeper < ActionController::Caching::Sweeper
  observe Menu
  def after_update(menu)
    expire_cache_for(menu)
  end

  def after_destroy(menu)
    expire_cache_for(menu)
  end

  def after_create(menu)
    expire_cache_for(menu)
  end

private
  def expire_cache_for(menu)
    expire_page(:controller => '/menus', :action => 'show', :slug => menu.slug)
  end
end
