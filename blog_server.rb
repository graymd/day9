require 'sinatra'
require 'data_mapper'

DataMapper.setup(
	:default,
	'mysql://root@localhost/blog_data'
	)


class Blog
	include DataMapper::Resource
	property :id, Serial
	property :title, String
	property :date, String
	property :writeup, String	
end

DataMapper.finalize.auto_upgrade!

#Index
get '/' do
	@page_title = "My Blog"
	@blogs= Blog.all
	erb :index
end

#New
get '/new' do
	erb :create_new_blog_entry
end

#Create
post '/create_blog' do
	@blog = Blog.new
	@blog.title = params[:title]
	@blog.date = params[:date]
	@blog.writeup = params[:writeup]
	@blog.save
	redirect to '/'
end

#Show
get '/blog/:id' do
	@blog = Blog.get params[:id]
	erb :display_blog
end

#Delete
delete '/delete_blog/:id' do
	@blog = Blog.get params[:id]
	@blog.destroy
	redirect to '/'
end


































