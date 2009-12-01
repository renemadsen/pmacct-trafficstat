class AddDefaultAdminUser < ActiveRecord::Migration
  def self.up
      user = User.new(:name => 'Administrator',
                      :password => 'administrator',
                      :password_confirmation => 'administrator',
                      :login => 'admin@invalid.com',
                      :email => 'admin@invalid.com')
      user.admin = true
      user.save
    end

    def self.down
    end  
end
