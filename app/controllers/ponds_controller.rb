class PondsController < ApplicationController
  before_action :set_pond, only: [:show, :edit, :update, :destroy]
  skip_before_filter :verify_authenticity_token  

  def index
    @ponds = Pond.all
    # erb :'ponds/index'
    # Write the code to get all ponds 
    # and send them to the index view listing all ponds.
  end

  def create
    @pond = Pond.create(:name => params[:name])
    @pond.water_type = params[:water_type]
    @pond.save
    redirect_to ponds_path
    # Write the code to save new ponds 
    # and redirect to the index view listing all ponds.
  end

  # def new
  #   @pond = Pond.new
  #   # erb :'ponds/new'
  #   # Write the code to send to the new form view. 
  # end

  def show
    # Write the code to find the correct pond
    # by id given in the url.
    # Then send them to the show view.
  end

  def edit
    # Write the code to find the correct pond
    # by id given in the url.
    # Then send them to edit form view.
  end

  def update
    @pond.name = pond_params[:name]
    @pond.water_type = pond_params[:water_type]
    @pond.save
    redirect_to'/ponds'
    # Write the code to find the correct pond
    # and set it's attributes and save.
    # Then redirect to the index view listing all ponds.
  end

  def destroy
    @pond.destroy
    redirect_to '/ponds'
    # Write the code to find the correct pond
    # and destroy it.
    # Then redirect to the index view listing all ponds.
  end
private
  def set_pond
    @pond = Pond.find(params[:id])
  end

  def pond_params
    params[:pond]
  end

end
