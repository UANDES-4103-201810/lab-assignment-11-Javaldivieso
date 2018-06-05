require 'rails_helper'
RSpec.describe Message, type: :model do
	it "messagetest" do
	@user = create(:user)
	@message = build(:message)
	expect(@message).to be_valid
	end
	it "notnulluser_id" do
	@message = build(:message, user_id: nil)
	expect(@message).to_not be_valid
	end
	it "nonexistinguser" do
	@user = create(:user)
	@message = build(:message, user_id: 2)
	expect(@message).to_not be_valid
	end
end
