class ViewsController < ApplicationController
  def index
  	pages = Page.where(:pages => {:link => 'main'})
    @page = pages[0]
  end

  def view
    params[:page_link] ||= 'main'
    pages = Page.where(:pages => {:link => params[:page_link]})
    @page = pages[0]
  end
end
