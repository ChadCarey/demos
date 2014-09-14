require 'rails_helper'

RSpec.describe Apartment, :type => :model do
  	
  	it "has a valid factory" do
  		subject = FactoryGirl.build(:apartment)
  		expect(subject).to be_valid
  	end

  	
  	# Cost tests
  	context "cost" do
	  	it "is invalid without a cost" do
	  		subject = FactoryGirl.build(:apartment, cost: nil)
	  		expect(subject).to_not be_valid
	  	end

	  	it "is invalid with negative cost" do
	  		subject = FactoryGirl.build(:apartment, cost: -1)
	  		expect(subject).to_not be_valid
	  	end

	  	it "is invalid when set to a NOT number value" do
	  		subject = FactoryGirl.build(:apartment, cost: "this")
	  		expect(subject).to_not be_valid
	  	end
	end
	
  	# Bedrooms tests
  	context "bedrooms" do
	  	it "is invalid without specified number of bedrooms" do
	  		subject = FactoryGirl.build(:apartment, bedrooms: nil)
	  		expect(subject).to_not be_valid
	  	end

		it "is invalid with negative number of bedrooms" do
	  		subject = FactoryGirl.build(:apartment, bedrooms: -1)
	  		expect(subject).to_not be_valid
	  	end

	  	it "is invalid when set to a NOT number value" do
	  		subject = FactoryGirl.build(:apartment, bedrooms: "this")
	  		expect(subject).to_not be_valid
	  	end
  	end

  	# Bathrooms tests
  	context "bathrooms" do
	  	it "is invalid without specified number of bathrooms" do
	  		subject = FactoryGirl.build(:apartment, bathrooms: nil)
	  		expect(subject).to_not be_valid
	  	end

	  	it "is invalid with negative number of bathrooms" do
	  		subject = FactoryGirl.build(:apartment, bathrooms: -1)
	  		expect(subject).to_not be_valid
	  	end

	  	it "is invalid when set to a NOT number value" do
	  		subject = FactoryGirl.build(:apartment, bathrooms: "this")
	  		expect(subject).to_not be_valid
	  	end
  	end

  	# Pay_period tests
  	context "pay_period" do
		it "is invalid when pay_period is not present" do
			subject = FactoryGirl.build(:apartment, pay_period: nil)
	  		expect(subject).to_not be_valid
	  	end

	  	it "is valid with pay_period set to 'monthly'" do
	  		subject = FactoryGirl.build(:apartment, pay_period: "monthly")
	  		expect(subject).to be_valid
	  	end

	  	it "is valid with pay_period set to by_semester" do
			subject = FactoryGirl.build(:apartment, pay_period: "by_semester")
	  		expect(subject).to be_valid
	  	end

		it "is invalid with any other string" do
			subject = FactoryGirl.build(:apartment, pay_period: "not by_semester")
	  		expect(subject).to_not be_valid
	  	end
  	end

  	# Other tests

end  
  
