class OrdersController < ApplicationController
  def new
    the_book_id = params[:book_id]
    @book = Book.find(the_book_id)
  end
end
