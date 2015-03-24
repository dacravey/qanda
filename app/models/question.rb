class Question < ActiveRecord::Base
  has_many :responses
  belongs_to :user
  validates :inquiry, :presence => true
  validates :tag, :presence => true
end
