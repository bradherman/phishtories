FactoryGirl.define do
  factory :story do
    body { "Carini " * 100 }
    title "You Enjoy Myself"
    sequence :author_email do |n|
      "trey_#{ n }@phish.net"
    end
  end
end
