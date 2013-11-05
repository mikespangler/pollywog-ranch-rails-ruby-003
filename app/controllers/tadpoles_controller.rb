class TadpolesController < ApplicationController
   get '/tadpoles'  do
  @tadpoles = Tadpole.all
    erb :'tadpoles/index'
    # Write the code to get all tadpoles 
    # and send them to the index view listing all tadpoles.
  end

  post '/tadpoles' do
    tadpole = Tadpole.create(:name => params[:name])
    tadpole.color = params[:color]
    tadpole.frog_id = params[:frog_id]
    tadpole.save
    # Write the code to create a new tadpole
    # using the attributes included from the new form view.
    # Also set the frog parent using the passed frog_id atribute.
    # Then save and redirect to the index view listing all tadpoles.
    redirect '/tadpoles'
  end

  get '/tadpoles/:id' do
    @tadpole = Tadpole.find(params[:id])
    erb :'tadpoles/show'
    # Write the code to find the correct tadpole
    # by id given in the url.
    # Then send them to the show view.

  end

  get '/tadpoles/:id/edit' do
    @tadpole = Tadpole.find(params[:id])
    erb :'tadpoles/edit'
    # Write the code to find the correct tadpole
    # by id given in the url.
    # Then send them to edit form view.

  end

  post '/tadpoles/:id/update' do
    tadpole = Tadpole.find(params[:id])
    tadpole.color = params[:color]
    tadpole.frog_id = params[:frog_id]
    tadpole.save
    redirect '/tadpoles'
    # Write the code to find the correct tadpole
    # and set it's attributes and save.
    # Then redirect to the index view listing all tadpoles.

  end

  get '/tadpoles/:id/destroy' do
    tadpole = Tadpole.find(params[:id])
    tadpole.destroy
    redirect '/tadpoles'
    # Write the code to find the correct tadpole
    # and destroy it.
    # Then redirect to the index view listing all tadpoles.

  end

  get '/tadpoles/:id/evolve' do
    tadpole = Tadpole.find(params[:id])
    parent = Frog.find(tadpole.frog_id)
    new_frog = Frog.create(:name => tadpole.name)
    new_frog.color = tadpole.color
    new_frog.pond_id = parent.pond_id
    new_frog.save
    tadpole.destroy
    redirect '/tadpoles'
    # Write the code to find the correct tadpole
    # by id given in the url and store it temporarily.
    # Create a new frog and pass the attributes of the 
    # tadpole into the frog that it is becoming.
    # Then save the new frog and destroy the old tadpole.
    # Then redirect to the index view listing all tadpoles.

  end

end
