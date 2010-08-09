class User < ActiveRecord::Base
  acts_as_authentic do |c|
    c.login_field = :email
  end
  # has_one :profile
  # has_many :roles
  # has_many :feeds
  # 
  # delegate :avatar, :to => :profile
  # 
  # include Followable
  # 
  # has_many :following, :class_name => "Follow", :foreign_key => "follower_id"
  # 
  # def in_role?(name)
  #   !!roles.find(:first, :conditions => { :name => name})
  # end
  # 
  # def add_role(name)
  #   roles.create(:name => name)
  # end
  
end
