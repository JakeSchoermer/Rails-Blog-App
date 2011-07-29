class DefaultPost < ActiveRecord::Migration

  #defines the AR class
  class Posts < ActiveRecord::Base; end

  def self.up
     Posts.create(:name =>'admin', :title => 'Getting Started', :content =>'<h4>Welcome to the Rails Blog Application</h4><p>You can get started by editing this post
      or creating a new one. Happy Blogging.</p>')
  end

  def self.down
    Posts.delete_all(:content =>'<h4>Welcome to the Rails Blog Application</h4><p>You can get started by editing this post
      or creating a new one. Happy Blogging.</p>')
  end
end
