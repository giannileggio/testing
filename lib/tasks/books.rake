namespace :books do
  desc "TODO"
  task random: :environment do
  	10.times do 
  		Book.random
  	end
  end

end
