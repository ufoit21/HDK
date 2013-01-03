require 'spec_helper'

describe User do
	before{
    @user = User.new(name: "Example", email: "userfsadafas@example.com", password: "12345678", password_confirmation: "12345678")
  }
  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should respond_to(:password) }
  it { should respond_to(:password_digest) }
  it { should respond_to(:password_confirmation) }
   it { should be_valid}
  it { should respond_to(:authenticate) }
  describe "when name is not present" do
  	before {@user.name=" "}
  	it {should_not be_valid}
  end

  describe "when password is not present" do
  	before {@user.password=@user.password_confirmation=" "}
  	it{should_not be_valid}
  end
  describe "when password is too short" do
  	 before { @user.password = @user.password_confirmation = "qqqqq" }
  	 it{should_not be_valid}
  end

  describe "when password doesn't match confirmation" do
  before { @user.password_confirmation = "mismatch" }
  it { should_not be_valid }
  end
describe "return value of authenticate method" do
	before{@user.save}
	let(:found_user){User.find_by_email(@user.email)}
	describe "with valid password" do
		it{should==found_user.authenticate(@user.password)}
	end
	describe "with invalid password" do
		let(:user_for_invalid){found_user.authenticate("invalid")}
		it{should_not==user_for_invalid}
		specify { user_for_invalid.should be_false }
	end
end
end