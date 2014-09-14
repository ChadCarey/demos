# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :apartment do
  	cost 600.0
  	bedrooms 2
  	bathrooms 2
  	pay_period "monthly"
  end
end
