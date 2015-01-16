Blog Website Using Sinatra and Databases

Files required:
1) .rvmrc -> contains ruby version number (2.1.5) required to run project.  Also creates the ruby gemset for the project.
2) Gemfile -> contains the gems utilized in the project from the source page https://rubygems.org: 'sinatra', 'mysql', 'data_mapper', 'dm-mysql-adapter' (use gem install bundler and bundle install)
3) Gemfile.lock -> autocreated from Gemfile to resolve dependencies for gems required in Gemfile
4) blog_server.rb -> main server page for the blog site
5) index.erb -> Route page, displays all entered blogs
6) create_new_blog_entry.erb -> create new blog entry page
7) display_blog.erb -> displays a single blog entry
8) edit_blog_entry.erb -> allows you to edit an entered blog
9) layout.erb -> contains the main html layout site which yields to each of the pages
10) in sequel pro, start a database called blog_data

More info:  
The site requires Sinatra as a simple web server and datamapper to allow the web server to talk to a database kept in sequel pro. 
The index.erb page displays all of the blog posts (title, day created, and blog entry) by looping through the database of blog posts within the server and displaying that information.  
The create_new_blog_entry.erb page allows you the create a new blog entry by calling a POST method written within the server page.  
The edit_blog_entry.erb page allows you to edit an existing blog utilizing the PATCH method. To utilize the patch method, we must use method="post" within the form tag and then utilize <input name="_method" value="patch" type="hidden"> underneath the form tag.  See: "http://guides.rubyonrails.org/form_helpers.html" and search "_method"  or http://www.sinatrarb.com/intro.html and search delete for more information.
The display_blog.erb pages shows a single blog entry.  The page also includes a button allowing you to delete the blog entry.  (Note: A delete method can only be invoked on a single page - need to find reference).
The blog_server.rb file contains the server data.  At the head, sinatra and data_mapper are required. Next the datamapper link to sequel pro is setup.  Next the links to show the different pages are setup and then the functions for add, delete and edit are setup.

