require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

require './models/group.rb'
require './models/user.rb'

enable :method_override

#root #index
get '/' do
  erb :'root/index.html'
end

configure do
  set :server, :puma
end

#root #setting
get '/setting' do
  erb :'root/setting.html'
end

#manage #list
get '/manage/list' do
  erb :'manage/list.html'
end

#manage #index
get '/manage' do
  @post = Post.all
  erb :'manage/index.html'
end

#manage #show
get '/manage/:id' do
  @post = Post.find_by(id: params[:id])
  erb :'manage/show.html'
end

#manage #new
get '/manage/new' do
  erb :'manage/new.html'
end

#users #login
get '/login' do
  erb :'users/login.html'
end

#users #mypage
get '/mypage' do
  erb :'users/mypage.html'
end


