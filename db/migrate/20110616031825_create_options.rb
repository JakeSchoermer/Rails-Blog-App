class CreateOptions < ActiveRecord::Migration

  #defines the AR class
  class Options < ActiveRecord::Base; end


  def self.up
    create_table :options do |t|
      t.string :option
      t.string :value

      t.timestamps
    end

    #Load Data from the Function Below
    load_data

  end

  def self.load_data
    #Set all of the application's default options (as decided so far)
    Options.create(:option =>'blog_title', :value =>'Your Name')
    Options.create(:option =>'site_owner_fname', :value =>'')
    Options.create(:option => 'site_owner_lname', :value =>'')
    Options.create(:option => 'twitter_account_url', :value => 'www.twitter.com')
    Options.create(:option => 'facebook_account_url', :value => 'www.facebook.com')
    Options.create(:option => 'myspace_account_url', :value => 'www.myspace.com')

  end

  def self.down
    drop_table :options
  end
end
