FactoryGirl.define do
  factory :comment_vote do
    comment
    user
  end

  factory :story_vote do
    story
    user
  end
end
