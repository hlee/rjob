class Comment < ActiveRecord::Base
  attr_accessible :content
  belongs_to :job_post
  belongs_to :user 
end
