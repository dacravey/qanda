class Response < ActiveRecord::Base
  belongs_to :question

  validates :answer, :presence => true
  validates :tag, :presence => true
end
