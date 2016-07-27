FactoryGirl.define do
  factory :user do
    sequence :email do |n|
      "trey_#{ n }@phish.net"
    end
    password "4815162342"
  end
end
