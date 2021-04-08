class UsersController < ApplicationController
  def show
    @user = User.find(current_user.id)
    @prototype = Prototype.new
    @prototypes = @user.prototypes.includes(:user)
  end

end



