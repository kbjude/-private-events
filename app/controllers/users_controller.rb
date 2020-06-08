class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
    if @user.save
      flash.now[:success] = 'User has been successfully added'
      redirect_to @user
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    if @user
      @past_events = @user.events.past_date
      @upcoming_event = @user.events.upcoming_date
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :username)
  end
end
