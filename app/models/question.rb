class Question <ActiveRecord::Base
  validates :inquiry, :presence => true
  validates :response_id, :presence => true
end
