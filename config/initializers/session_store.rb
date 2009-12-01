# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_new_app_session',
  :secret      => '7f62a9276ac71f44504d351819fe482798a5a1e36e81263ec77c76a1aad2cf97f13f1231b19da77e85b826ea3e0f98cfde8e1a7ca6918bbb3883d4234db1210f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
