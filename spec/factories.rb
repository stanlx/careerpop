FactoryGirl.define do
	factory :user do
		fname    "Useme"
		lname    "User"
		email    "use@test.com"
		password "foobar"
		password_confirmation "foobar"
	end
end
