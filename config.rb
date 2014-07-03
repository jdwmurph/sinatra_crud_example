require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :database => "sinatra_crud_example"
)
