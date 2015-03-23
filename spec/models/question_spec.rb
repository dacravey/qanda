require 'rails_helper'

describe Question do
  it {should validate_presence_of :inquiry }
  it {should validate_presence_of :response_id }
end
