require_relative '../config.rb'

class CreateUserTableAndUserName < ActiveRecord::Migration
  create_table :users do |t|
    t.string :email
    t.string :password
  end

end
