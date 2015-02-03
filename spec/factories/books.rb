FactoryGirl.define do
  factory :book do
    title { Faker::Lorem.sentence }
		intro { Faker::Hacker.say_something_smart }
		release_date { Faker::Date.between(2.months.ago, 2.months.from_now)}
  end

end
