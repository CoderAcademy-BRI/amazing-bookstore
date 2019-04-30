class OrdersController < ApplicationController
  def new
    the_book_id = params[:book_id]
    @book = Book.find(the_book_id)

    Stripe.api_key = 'sk_test_pxd9AQJuQrOgGS3SLQj9ZxaD00oSsPY4rj'

    

    @stripe_checkout_session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: @book.title,
        description: "A great read by #{@book.author.name}",
        amount: (@book.price * 100).to_i,
        currency: 'aud',
        quantity: 1,
      }],
      success_url: 'http://localhost:3000/success',
      cancel_url: 'http://localhost:3000/cancel',
    )
  end

  def create
  end
end
