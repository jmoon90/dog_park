FactoryGirl.define do
  factory :ownership do
    owner_id 1
    dog_id 1

    association :owner
    association :dog
  end
end
