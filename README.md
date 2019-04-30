# Deployment instructions

To deploy to Heroku

```
heroku login
heroku create
git push heroku master
heroku run db:migrate
heroku run db:seed
heroku open
```
# Useful Stripe resources

[Stripe homepage](https://stripe.com)

[How to add the Stripe API library](https://stripe.com/docs/libraries)
Make sure to choose 'Ruby' and use the Gemfile option.

[Stripe Checkout (Server) quick start](https://stripe.com/docs/payments/checkout/server)
This is the integration we used in this Rails app. Stripe also offers a
more limited Checkout - Client integration, and a JavaScript based
Elements library.

[Test cards numbers](https://stripe.com/docs/testing#cards)
