class Book < ActiveRecord::Base

	extend FriendlyId
  friendly_id :title, use: :slugged

	validates :title, presence: true

	class << self

		def random
			Book.create(:title => Faker::Lorem.sentence, :intro => Faker::Hacker.say_something_smart, :release_date => Faker::Date.between(2.months.ago, 2.months.from_now))
		end

		def coming_soon
			where('release_date >= NOW()')
		end

	end
	
end
