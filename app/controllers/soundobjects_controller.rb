class SoundobjectsController < ApplicationController
  before_action :set_soundobject, only: [:show, :update, :destroy]

  # GET /soundobjects
  def index
    @soundobjects = Soundobject.all

    render json: @soundobjects
  end

  # GET /soundobjects/1
  def show
    render json: @soundobject
  end

  # POST /soundobjects
  def create
    @soundobject = Soundobject.new(soundobject_params)

    if @soundobject.save
      render json: @soundobject, status: :created, location: @soundobject
    else
      render json: @soundobject.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /soundobjects/1
  def update
    if @soundobject.update(soundobject_params)
      render json: @soundobject
    else
      render json: @soundobject.errors, status: :unprocessable_entity
    end
  end

  # DELETE /soundobjects/1
  def destroy
    @soundobject.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_soundobject
      @soundobject = Soundobject.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def soundobject_params
      params.require(:soundobject).permit(:Name, :image, :description, :color, :Author)
    end
end
