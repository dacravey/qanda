class Question < ActiveRecord::Base
  has_many :responses
  validates :inquiry, :presence => true
  validates :tag, :presence => true
end
