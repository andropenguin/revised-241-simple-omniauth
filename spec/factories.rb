FactoryGirl.define do
  factory :article do
    sequence(:name) { |n| "Person #{n}" }
    sequence(:content) { "hello Person #{n}" }
  end
end
