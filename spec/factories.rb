FactoryGirl.define do

  factory :user do
    sequence(:email) {|n| "test#{n}@example.com" }
    password 'f4k3p455w0rd'
  end

  factory(:question) do
    inquiry('example question')
    tag('example tag')
  end

  factory(:response) do
    answer('example response')
  end
end
