class PageSweeper < ActionController::Caching::Sweeper
  observe Page
  def after_update(page)
    expire_cache_for(page)
  end

  def after_destroy(page)
    expire_cache_for(page)
  end

  def after_create(page)
    expire_cache_for(page)
  end

private
  def expire_cache_for(page)
    expire_action(:controller=>"pages",:action=>"show",:id=>page.id)
  end
end
