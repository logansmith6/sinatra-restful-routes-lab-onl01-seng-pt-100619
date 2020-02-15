class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  # code actions here!

  get '/recipes' do
    @recipes = Recipe.all
    erb :index
  end

  get '/recipes/new' do
    erb :new
  end


  post '/recipes' do
<<<<<<< HEAD
    @recipe = Recipe.create(:name => params[:name], :ingredients => params[:ingredients], :cook_time => params[:cook_time])
    if params[:name].empty? || params[:ingredients].empty? || params[:cook_time].empty?
      redirect "/recipes/new"
    else
      @recipe.save
      redirect to "/recipes/#{@recipe.id}"
    end
=======
    @recipe - Recipe.create(:name => params[:name], :ingredients => params[:ingredients], :cook_time => params[:cook_time])
    redirect to "/recipes/#{@recipe.id}"
>>>>>>> fef8e2f91f60adaad4061266e754e9837a2c6d9f
  end

  get '/recipes/:id' do
    @recipe = Recipe.find_by_id(params[:id])
    erb :show
  end

  get '/recipes/:id/edit' do
    @recipe = Recipe.find_by_id(params[:id])
    erb :edit
  end

<<<<<<< HEAD
  patch '/recipes/:id' do
=======
  patch '/articles/:id' do
>>>>>>> fef8e2f91f60adaad4061266e754e9837a2c6d9f
    @recipe = Recipe.find_by_id(params[:id])
    @recipe.name = params[:name]
    @recipe.ingredients = params[:ingredients]
    @recipe.cook_time = params[:cook_time]
    @recipe.save
    redirect to "/recipes/#{@recipe.id}"
  end

<<<<<<< HEAD
  delete '/recipes/:id' do
    Recipe.destroy(params[:id])
    redirect to '/recipes'
  end

=======
>>>>>>> fef8e2f91f60adaad4061266e754e9837a2c6d9f
end
