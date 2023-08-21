class UsersController < ApplicationController
  

  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new
  end

  def index
    @user = User.all
    @user = current_user
    @book = Book.new
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "Update was successful"
    redirect_to user_path(@user.id)
    else
    flash[:notice] = "Update failed"
    end  
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :image, :introduction)
  end  
end
