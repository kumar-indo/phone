# Phone

## Setting Up for Development

1.  Configure the Ruby version in `.ruby-version`. I've used 2.6.3 while developing.

2.  I used `rails` version `6.0` for this project

3.  In a terminal window, go to the project root folder. Make sure the correct
    Ruby and gemset are being used.

    Then, do:

        $ gem install bundler
        $ bundle install

4.  The default setup uses sqlite database which is shipped by default by rails. To run migrations and feed the seed data:

        $ rake db:migrate
        $ rake db:seed

    Optionally, you could do

        $ rake db:setup

    to achieve the same in a single command

## API

While in development all api calls are made to `http://localhost:3000`

1. Assign a random number
     
   Make a `POST` request to `/sim_cards` with the following body

   ```
   { "sim_card": { "number": null }}
   ```

2. Assign a specific number

   Make a `POST` request to `/sim_cards` with similar body.

   ```
   { "sim_card": { "number": 1234567890 }}
   ```

   If the mobile number is available, it will be assigned.
