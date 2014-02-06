FactoryGirl.define do
  factory :article do
    sequence(:name) { |n| "Person #{n}" }
    sequnece(:content) { |n|, "Today, it cold. #{n}" }
  end
end
