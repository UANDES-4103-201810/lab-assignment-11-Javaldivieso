FactoryBot.define do
factory :user do
	usarname "Username"
	email "example@example.cl"
	password "Password"
end
factory :message do
	user_id 1
	date "2017-06-05"
	content "Content"
end
end

