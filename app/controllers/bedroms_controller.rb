class BedromsController < ApplicationController
  before_action :set_bedrom, only: [:show, :edit, :update, :destroy]

  # GET /bedroms
  # GET /bedroms.json
  def index
    @bedroms = Bedrom.all
  end

  # GET /bedroms/1
  # GET /bedroms/1.json
  def show
  end

  # GET /bedroms/new
  def new
    @bedrom = Bedrom.new
  end

  # GET /bedroms/1/edit
  def edit
  end

  # POST /bedroms
  # POST /bedroms.json
  def create
    @bedrom = Bedrom.new(bedrom_params)

    respond_to do |format|
      if @bedrom.save
        format.html { redirect_to @bedrom, notice: 'Bedrom was successfully created.' }
        format.json { render :show, status: :created, location: @bedrom }
      else
        format.html { render :new }
        format.json { render json: @bedrom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bedroms/1
  # PATCH/PUT /bedroms/1.json
  def update
    respond_to do |format|
      if @bedrom.update(bedrom_params)
        format.html { redirect_to @bedrom, notice: 'Bedrom was successfully updated.' }
        format.json { render :show, status: :ok, location: @bedrom }
      else
        format.html { render :edit }
        format.json { render json: @bedrom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bedroms/1
  # DELETE /bedroms/1.json
  def destroy
    @bedrom.destroy
    respond_to do |format|
      format.html { redirect_to bedroms_url, notice: 'Bedrom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bedrom
      @bedrom = Bedrom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bedrom_params
      params.require(:bedrom).permit(:Name, :floors_id, :floors_houses_id)
    end
end
