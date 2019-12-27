class OccupantsHasBedroomsController < ApplicationController
  before_action :set_occupants_has_bedroom, only: [:show, :edit, :update, :destroy]

  # GET /occupants_has_bedrooms
  # GET /occupants_has_bedrooms.json
  def index
    @occupants_has_bedrooms = OccupantsHasBedroom.all
  end

  # GET /occupants_has_bedrooms/1
  # GET /occupants_has_bedrooms/1.json
  def show
  end

  # GET /occupants_has_bedrooms/new
  def new
    @occupants_has_bedroom = OccupantsHasBedroom.new
  end

  # GET /occupants_has_bedrooms/1/edit
  def edit
  end

  # POST /occupants_has_bedrooms
  # POST /occupants_has_bedrooms.json
  def create
    @occupants_has_bedroom = OccupantsHasBedroom.new(occupants_has_bedroom_params)

    respond_to do |format|
      if @occupants_has_bedroom.save
        format.html { redirect_to @occupants_has_bedroom, notice: 'Occupants has bedroom was successfully created.' }
        format.json { render :show, status: :created, location: @occupants_has_bedroom }
      else
        format.html { render :new }
        format.json { render json: @occupants_has_bedroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /occupants_has_bedrooms/1
  # PATCH/PUT /occupants_has_bedrooms/1.json
  def update
    respond_to do |format|
      if @occupants_has_bedroom.update(occupants_has_bedroom_params)
        format.html { redirect_to @occupants_has_bedroom, notice: 'Occupants has bedroom was successfully updated.' }
        format.json { render :show, status: :ok, location: @occupants_has_bedroom }
      else
        format.html { render :edit }
        format.json { render json: @occupants_has_bedroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /occupants_has_bedrooms/1
  # DELETE /occupants_has_bedrooms/1.json
  def destroy
    @occupants_has_bedroom.destroy
    respond_to do |format|
      format.html { redirect_to occupants_has_bedrooms_url, notice: 'Occupants has bedroom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_occupants_has_bedroom
      @occupants_has_bedroom = OccupantsHasBedroom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def occupants_has_bedroom_params
      params.require(:occupants_has_bedroom).permit(:occupants_id, :bedrooms_id, :bedrooms_floors_id, :bedrooms_floors_houses_id)
    end
end
