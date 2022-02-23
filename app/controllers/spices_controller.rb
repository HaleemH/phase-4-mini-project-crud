class SpicesController < ApplicationController
    wrap_parameters format: []
  def index
   render json: Spice.all, status: :ok
  end

  def create
   render json: Spice.create(spice_params), status: :created
  end

  def update
    spice = Spice.find(params[:id])
    if spice
        spice.update(spice_params)
        render json: spice, status: :accepted
    else
    end
  end

  def destroy
    spice = Spice.find( params[:id])
    if spice
        spice.destroy
        head :no_content
    else

    end
end



  private

  def spice_params
    params.permit(:title, :image, :description, :notes, :rating)
  end
end
