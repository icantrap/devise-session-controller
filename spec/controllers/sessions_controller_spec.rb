require 'spec_helper'

describe SessionsController do
  describe 'post #create' do
    before do
      @request.env['devise.mapping'] = Devise.mappings[:user]
      user = FactoryGirl.create(:user)

      post :create, { email: user.email, password: user.password }
    end

    it { should set_the_flash[:before] }
    it { should set_the_flash[:during] }
    it { should set_the_flash[:after] }
  end
end
