class HomeController < ApplicationController
  def index
    @blog_title= Option.where(:option => 'blog_title').first.value

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @options }
    end
  end

end
