class BooksController < ApplicationController
  def top
  end

  def error
  end

  def new
    @book = Book.new
  end

  def create
    @book=Book.new(book_params)
    if @book.save
     flash[:notice] ='successfully!'
     redirect_to book_path(@book.id)
    else
     flash[:alert] = "error"
     render :new
    end
  end

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])

  end

  def update
     book=Book.find(params[:id])
     if book.update(book_params)
     flash[:notice] ='successfully!!'
     redirect_to book_path(book.id)
     else
     flash[:alert] = "error"
     render :edit
     end
  end

  def destroy
    book=Book.find(params[:id])
    if book.destroy
     flash[:notice] ='successfully!!!'
     redirect_to '/books'
    else
     flash[:alert]="error"
     redirect_to '/error'
    end
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
