class JobPost < ActiveRecord::Base
  attr_accessible :title, :url

  has_many :comments
  has_many :comments_with, class_name: :Comment do
    def active(flag)
      proxy_association.owner.comments_with.where("active= :flag", {flag: flag})
    end
  end

  has_many :active_comments, class_name: :Comment, conditions: {active: true}
  #scope :comments_with_active, ->(flag){joins(:comments).where("comments.active= :flg", {flg: flag })}
  scope :comments_with_active, ->(flag){joins(:comments).where(["comments.active= :flg", {flg: flag }])}

end
