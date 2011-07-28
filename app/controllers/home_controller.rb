class HomeController < ApplicationController
  def index
    @blog_title = Option.where(:option => 'blog_title').first.value
    @twitter_account_url = Option.where(:option => 'twitter_account_url').first.value
    @facebook_account_url = Option.where(:option => 'facebook_account_url').first.value
    @myspace_account_url = Option.where(:option => 'myspace_account_url').first.value

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @options }
    end
  end

end
