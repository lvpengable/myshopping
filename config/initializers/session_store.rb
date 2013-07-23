# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_shopping02_session',
  :secret      => '42ec1d4dacb2f99e92e9b6d14330fbf3049e3a994cb071ea7635ddc4791a191b536bd180a643d8e18f40db39c26fbac8cc49a4bd49f99e8a678facfe2d192f9d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
