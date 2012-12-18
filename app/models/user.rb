class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me
  has_many :follower_relations, foreign_key: :user_id, class_name: :UserRelation
  has_many :followed_relations, foreign_key: :friend_id, class_name: :UserRelation
  has_many :followers, through: :follower_relations
  has_many :followeds, through: :followed_relations, source: :followed_relation
  has_many :comments
  
  def friends 
    (self.followers + self.followeds).uniq
  end

  def friends_friends
    self.friends.collect{|x|x.friends}.flatten.uniq - [self]
  end

  def friends_friends_things
    self.friends_friends.collect{|x|x.things}.flatten.uniq
  end

  
end
