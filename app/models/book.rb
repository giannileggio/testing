class Book < ActiveRecord::Base

	extend FriendlyId
  friendly_id :title, use: :slugged

	validates :title, presence: true

	default_scope -> {order(:release_date)}

	has_and_belongs_to_many :users

	class << self

		def random
			Book.create(:title => Faker::Lorem.sentence, :intro => Faker::Hacker.say_something_smart, :release_date => Faker::Date.between(2.months.ago, 2.months.from_now))
		end

		def coming_soon
			where('release_date > NOW()')
		end

		def on_sale 
			where('release_date <= NOW()')
		end

	end
	
end
