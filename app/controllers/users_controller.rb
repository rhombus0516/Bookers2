class UsersController < ApplicationController
  def edit
  end

  def show
    @user = Book.find(params[:id])
    @book = @user.book_images 
  end

  def index
  end
end
