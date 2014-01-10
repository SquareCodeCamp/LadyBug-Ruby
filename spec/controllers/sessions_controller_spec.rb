require 'spec_helper'

describe SessionsController do

  describe "#login" do
    context "with a valid email and password" do
      let(:email) { 'codecamp@example.com' }
      let(:password) { 'password' }
      let(:user) {
        User.create!(
          email: email,
          password: password,
          name: 'Mr. Plow'
        )
      }

      let(:action) { :login }
      let(:params) { {email: user.email, password: user.password} }

      it "should return a session_token" do
        post action, params

        response.should be_ok
        response.body['token'].should_not be_nil
      end
    end
  end
end

