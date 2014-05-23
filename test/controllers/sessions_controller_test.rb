require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  context 'post #create' do
    setup do
      @request.env['devise.mapping'] = Devise.mappings[:user]
      user = FactoryGirl.create(:user)
      post :create, { email: user.email, password: user.password }
    end

    should set_the_flash[:before]
    should set_the_flash[:during]
    should set_the_flash[:after]
  end

end
