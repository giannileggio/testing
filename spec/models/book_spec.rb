require 'rails_helper'

RSpec.describe Book, :type => :model do
  it "is invalid without a title" do
  	expect(FactoryGirl.build(:book, :title => nil)).to be_invalid
  end
end
