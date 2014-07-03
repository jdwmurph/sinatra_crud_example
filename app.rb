require 'bundler'
Bundler.require

require './config'
require './models/User'

get '/' do
  erb :index
end

get '/users' do
  @users = User.all
  erb :index
end

get '/users/new' do
  erb :new
end

post '/users' do
  User.create(params)
  redirect '/users'
end

get '/users/:id' do
  @user = User.find(params[:id])
  erb :show
end

get '/users/:id/edit' do
  @user = User.find(params[:id])
  erb :edit
end

put '/users/:id' do
  user = User.find(params[:id])
  user.update(email: params[:email], password: params[:password])
  redirect "/users/#{user.id}"
end

delete '/users/:id' do
  User.delete(params[:id])
  redirect '/users'
end
