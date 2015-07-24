#index
get "/" do
  @entries = Entry.all
  erb :index
end

#new (create entry)
get "/new" do
  erb :"/new"
end

#create
post "/" do
  @entry = Entry.create(params[:entry])
  redirect "/#{@entry.id}"
end


#show (specific entry)
get "/:id" do
  @entry = Entry.find(params[:id])
  erb :"/show"
end

#edit
get "/:id/edit" do
  @entry = Entry.find(params[:id])
  erb :"/edit"
end

#update
put "/:id" do
  @entry = Entry.find(params[:id])
  @entry.update(params[:entry])
  redirect "/#{@entry.id}"
end

#destroy
delete "/:id" do
  @entry = Entry.find(params[:id])
  @entry.destroy
  redirect "/"
end

get "/:id/like" do
  @entry = Entry.find(params[:id])
  @entry.like_counter += 1
  @entry.save
  # @entry.update(params[:like_counter]+1)
  puts "*" * 100
  puts "#{@entry.like_counter}"
  redirect "/#{@entry.id}"
end
