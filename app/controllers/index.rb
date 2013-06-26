get '/' do
  # Look in app/views/index.erb
  @categories = Category.all
  erb :category
end

get '/category/:name' do
  @category = Category.find_by_name(params[:name])
  @listings = @category.listings #Listing.where(category: @category)
  erb :listings
end

get '/listing/new' do
  @categories = Category.all
  erb :new_listing
end
#get '/listing/:id'

post '/listing' do
  @category = Category.find(params[:listing][:category_id])
  @listing = @category.listings.build(params[:listing])
  if @listing.save
    redirect "/category/#{@listing.category.name}"
  else
    @errors = @listing.errors
    erb :new_listing
  end
  # new_listing = Listing.new(params[:listing])
end

put '/listings' do
  
end
