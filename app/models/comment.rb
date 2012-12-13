class Comment < ActiveRecord::Base
  belongs_to :job_post
  attr_accessible :content
end
