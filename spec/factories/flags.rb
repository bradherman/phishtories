FactoryGirl.define do
  factory :comment_flag do
    comment
    user
  end

  factory :story_flag do
    story
    user
  end
end
