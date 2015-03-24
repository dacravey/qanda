require 'rails_helper'

describe Response do
  it { should validate_presence_of :answer }
  it { should validate_presence_of :tag }
  it { should belong_to :question }
end
