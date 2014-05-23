class SessionsController < Devise::SessionsController
  def create
    flash[:before] = 'before encountered'

    super do |resource|
      flash[:during] = 'during encountered'
    end

    flash[:after] = 'after encountered'
  end
end
