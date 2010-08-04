# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_metric_session',
  :secret      => '89bf08ffd4bd38ebde15647191e6555629424c1d37438214f32c8f49f62c6e758fb9729e66aa73826f05fbcfb226d859742456a05cc7d3206d80f6906ea58619'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
