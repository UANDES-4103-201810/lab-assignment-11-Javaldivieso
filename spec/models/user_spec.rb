require 'rails_helper'

RSpec.describe User, type: :model do
	it "usertest" do
	@user = build(:user)
	expect(@user).to be_valid
	end
	it "usernametest" do
	@user = create(:user, usarname: 'Username', email: 'example@example.com', password: 'Password')
	@user2 = build(:user, usarname: 'Username', email: 'example1@example.com', password: 'Password1')
	expect(@user2).to_not be_valid
	end
	it "emailtest" do
	@user = create(:user, usarname: 'Username1', email: 'example@example.com', password: 'Password')
	@user2 = build(:user, usarname: 'Username', email: 'example@example.com', password: 'Password1')
	expect(@user2).to_not be_valid
	end
	it "userleght" do
	@user = build(:user, usarname: 'aaaaaaaaaaaaaaaaaaaaa')
	expect(@user).to_not be_valid
	end
end
