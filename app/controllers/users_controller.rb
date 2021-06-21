class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def index
    @user = current_user
    @book = Book.new
    @books = Book.all
    @users = User.all
  end
  
  private
  def user_params
  params.require(:user).permit(:title, :body, :image)  
  end
  
end
