# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  sequence :event_name do |n|
    "Example Event #{n}"
  end

  factory :event do
    name { FactoryGirl.generate(:event_name) }
    # required if the Devise Confirmable module is used
    # confirmed_at Time.now
  end
end
