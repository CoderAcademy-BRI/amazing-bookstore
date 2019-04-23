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

