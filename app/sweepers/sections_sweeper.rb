class SectionsSweeper < ActionController::Caching::Sweeper
  observe Section
  def after_update(section)
    expire_cache_for(section)
  end

  def after_destroy(section)
    expire_cache_for(section)
  end

  def after_create(section)
    expire_cache_for(section)
  end

private
  def expire_cache_for(section)
    expire_page(:controller => '/menus', :action => 'show', :slug => section.menu.slug)
  end
end
