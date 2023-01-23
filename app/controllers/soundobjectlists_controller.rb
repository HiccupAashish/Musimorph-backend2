class SoundobjectlistsController < ApplicationController
  before_action :set_soundobjectlist, only: [:show, :update, :destroy]

  # GET /soundobjectlists
  def index
    @soundobjectlists = Soundobjectlist.all

    render json: @soundobjectlists
  end

  # GET /soundobjectlists/1
  def show
    render json: @soundobjectlist
  end

  # POST /soundobjectlists
  def create
    @soundobjectlist = Soundobjectlist.new(soundobjectlist_params)

    if @soundobjectlist.save
      render json: @soundobjectlist, status: :created, location: @soundobjectlist
    else
      render json: @soundobjectlist.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /soundobjectlists/1
  def update
    if @soundobjectlist.update(soundobjectlist_params)
      render json: @soundobjectlist
    else
      render json: @soundobjectlist.errors, status: :unprocessable_entity
    end
  end

  # DELETE /soundobjectlists/1
  def destroy
    @soundobjectlist.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_soundobjectlist
      @soundobjectlist = Soundobjectlist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def soundobjectlist_params
      params.require(:soundobjectlist).permit(:Name, :image, :description, :color, :Author)
    end
end
