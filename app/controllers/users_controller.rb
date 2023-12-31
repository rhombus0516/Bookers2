class UsersController < ApplicationController
  

  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new
  end

  def index
    @users = User.all
    @user = current_user
    @book = Book.new
  end
  
  def edit
    @user = User.find(params[:id])
    redirect_to user_path(current_user.id) unless @user == current_user
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "successfully"
    redirect_to user_path(@user.id)
    else
      flash[:alert] = "err"
     render :edit
    end  
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end  
end
