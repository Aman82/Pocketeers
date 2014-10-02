FactoryGirl.define do
  factory :user do
    first_name "Alex"
  	last_name "Dubelko"
  	username "Hufflepuff"
  	email "alex@gmail.com"
    password_digest "11121754726178dbv"
    priviledge 4
  end
end