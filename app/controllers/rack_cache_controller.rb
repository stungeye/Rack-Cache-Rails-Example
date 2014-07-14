class RackCacheController < ApplicationController

  def cache_this
    expires_in(1.minutes, :public => true)
    render :text => Time.zone.now.to_s
  end

  def cache_page
    expires_in(1.minutes, :public => true)
    page = Page.first
    if stale?(etag: page, last_modified: page.updated_at)
      render :text => page.content
    end
  end

end
