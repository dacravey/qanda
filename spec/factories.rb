FactoryGirl.define do
  factory(:question) do
    inquiry('example question')
    tag('example tag')
  end

  factory(:response) do
    answer('example response')
  end
end
