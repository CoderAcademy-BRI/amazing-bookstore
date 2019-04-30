class OrdersController < ApplicationController
  def new
    the_book_id = params[:book_id]
    @book = Book.find(the_book_id)

    Stripe.api_key = '' # Add your Stripe test secret key here https://dashboard.stripe.com/account/apikeys

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
