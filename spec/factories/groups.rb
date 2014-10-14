FactoryGirl.define do
  factory :group do
  	id 1
    name "Ben An"
    topic "League of Legends"
    location '1520 2nd Street, Santa Monica, CA'
    curriculum_id 0
    start_date DateTime.new(2001,2,3,4,5,6,'+7')
    end_date DateTime.new(2001,2,3,4,5,6,'+7')
  end
end