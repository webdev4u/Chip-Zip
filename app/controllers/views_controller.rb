class ViewsController < ApplicationController
  def index
  	pages = Page.where(:pages => {:link => 'main'})
    @page = pages[0]
  end

  def view
    params[:page] ||= 'main'
    pages = Page.where(:pages => {:link => params[:page]})
    @page = pages[0]
  end
end
