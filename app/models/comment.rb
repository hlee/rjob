class Comment < ActiveRecord::Base
  attr_accessible :content, :job_post_id, :user_id
  belongs_to :job_post
  belongs_to :user 
end
