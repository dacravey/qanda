FactoryGirl.define do

  factory :user do
    email 'test@example.com'
    password 'f4k3p455w0rd'
    # user.confirmed_at = Time.now
    # user.save
  end

  factory(:question) do
    inquiry('example question')
    tag('example tag')
  end

  factory(:response) do
    answer('example response')
  end
end
