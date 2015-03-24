class Question < ActiveRecord::Base
  has_many :responses
  validates :inquiry, :presence => true
end
