class UsersController < ApplicationController
  def edit
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books
    #@user= current_user
    @book = Book.new
  end

  def index
    @user = User.all
    @user = current_user
    @book = Book.new
  end
end
