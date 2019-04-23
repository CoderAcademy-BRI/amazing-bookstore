class BooksController < ApplicationController
  def new
    
    @book = Book.new(author_id: params[:author_id])
    @authors = Author.all
  end
  
  def create  
    
    # { title: "Benjamin button"... }
    Book.create(book_params)

    redirect_to authors_path # /authors
  end

  private 

  def book_params
    params.require(:book).permit(:title, :url_image, :author_id)
  end

end
