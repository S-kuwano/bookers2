class BooksController < ApplicationController


  def index
    @users = User.all
    @book = Book.new
    @books = Book.all
  end

  def create
    @book = Book.new(book_params)
    @book.user.id = current_user.id
    @book.save
    redirect_to books_path
  end



  def show
    @book = Book.find(params[:id])
  end

  def destroy
  end
  
  private
  
  def book_params
    params.require(:book).permit(:title, :opinion)
  end
end
