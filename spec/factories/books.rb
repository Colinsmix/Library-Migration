# Read about factories at https://github.com/thoughtbot/factory_girl
require 'factory_girl_rails' 

FactoryGirl.define do
  factory :book do
    sequence(:title) {|n| "Title example #{n}"}
    sequence(:author) {|n| "Author example #{n}"} 
    rating 66
  end
end
