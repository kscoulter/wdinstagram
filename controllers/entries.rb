#index
get "/" do
  @entries = Entry.all
  erb :index
end
#show (specific entry)
get "/:id" do
  @entry = Entry.find(params[:id])
  erb :"/show"
end
#new (create entry)
get "/new" do
  erb :"/new"
end
#create
post "/" do

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

end
