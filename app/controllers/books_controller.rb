class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
     if @book.save
       flash[:notice] = "You have created book successfully."
    redirect_to book_path(@book.id)
     else
       flash.now[:alert] = "You don't created book successfully."
    render :new
     end
  end


  def index
    @books = Book.all
    @user = current_user
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
    @user = @book.user
  end
  
  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    book = Book.find(params[:id])
    if book.update(book_params)
     flash[:notice] = "You have update book successfully."
     redirect_to book_path
    else
      flash[:notice] = "You don't update book successfully."
    end
  end  
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end  

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end


end
