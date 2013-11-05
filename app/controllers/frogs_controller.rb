class FrogsController < ApplicationController
  before_action :set_frog, only: [:show, :edit, :update, :destroy, :new_tadpole]
  skip_before_filter :verify_authenticity_token  
  
  def index
    @frogs = Frog.all
    # Write the code to get all frogs 
    # and send them to the index view listing all frogs.
  end

  # post '/frogs' do
  #   frog = Frog.create(:name => params[:name])
  #   frog.color = params[:color]
  #   frog.pond_id = params[:pond_id]
  #   frog.save
  #   redirect '/frogs'
  #   Write the code to save new frogs 
  #   and redirect to the index view listing all frogs.
  # end

  def new
    @ponds = Pond.all
    @frog = Frog.new
    # Write the code to send to the new form view.
  end

  def create
    @ponds = Pond.all
    @frog = Frog.create(frog_params)
    @frog.color = frog_params[:color]
    @frog.pond_id = frog_params[:pond_id]
    @frog.save
    redirect_to frogs_path
    # Write the code to send to the new form view.
  end

  def show
    # Write the code to find the correct frog
    # by id given in the url.
    # Then send them to the show view.
  end

  def edit
    @ponds = Pond.all
    # Write the code to find the correct frog
    # by id given in the url.
    # Then send them to edit form view.
  end

  def update
    @frog.color = frog_params[:color]
    @frog.pond_id = frog_params[:pond_id]
    @frog.save
    redirect_to frogs_path
    # Write the code to find the correct frog
    # and set it's attributes and save.
    # Then redirect to the index view listing all frogs.
  end

  def destroy
    @frog.destroy
    redirect_to frogs_path
  end

  def new_tadpole
    redirect_to 'tadpoles#new'
  end

  def frog_params
    params[:frog]
  end

  def set_frog
    @frog = Frog.find(params[:id])
  end

  # get '/frogs/:id/destroy' do
  #   frog = Frog.find(params[:id])
  #   frog.destroy
  #   redirect '/frogs'
  #   # Write the code to find the correct frog
  #   # and destroy it.
  #   # Then redirect to the index view listing all frogs.
  # end

  # get '/frogs/:id/tadpoles/new' do
  #   @frog = Frog.find(params[:id])
  #   erb :'tadpoles/new'
  #   # Write the code to find the correct frog
  #   # and redirect to new tadpole form view
  # end

end


