class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save  
        # session[:username] = @user.username
        redirect_to root_path
    else
        render :new
    end
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find params[:id]
  end

  def thanks
  end

  def confirmation
  end

  private
  def user_params
      params.permit(:name, :email, :track, :under_18, :previous_attendant, :programming_experience, :reason, :tshirt_size, :tshirt_color, :status)
  end

end
