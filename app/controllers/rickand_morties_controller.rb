class RickandMortiesController < ApplicationController
  before_action :set_rickand_morty, only: [:show, :edit, :update, :destroy]

  # GET /rickand_morties
  # GET /rickand_morties.json
  def index
    @rickand_morties = RickandMorty.all
  end

  # GET /rickand_morties/1
  # GET /rickand_morties/1.json
  def show
  end

  # GET /rickand_morties/new
  def new
    @rickand_morty = RickandMorty.new
  end

  # GET /rickand_morties/1/edit
  def edit
  end

  # POST /rickand_morties
  # POST /rickand_morties.json
  def create
    @rickand_morty = RickandMorty.new(rickand_morty_params)

    respond_to do |format|
      if @rickand_morty.save
        format.html { redirect_to @rickand_morty, notice: 'Rickand morty was successfully created.' }
        format.json { render :show, status: :created, location: @rickand_morty }
      else
        format.html { render :new }
        format.json { render json: @rickand_morty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rickand_morties/1
  # PATCH/PUT /rickand_morties/1.json
  def update
    respond_to do |format|
      if @rickand_morty.update(rickand_morty_params)
        format.html { redirect_to @rickand_morty, notice: 'Rickand morty was successfully updated.' }
        format.json { render :show, status: :ok, location: @rickand_morty }
      else
        format.html { render :edit }
        format.json { render json: @rickand_morty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rickand_morties/1
  # DELETE /rickand_morties/1.json
  def destroy
    @rickand_morty.destroy
    respond_to do |format|
      format.html { redirect_to rickand_morties_url, notice: 'Rickand morty was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rickand_morty
      @rickand_morty = RickandMorty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rickand_morty_params
      params.require(:rickand_morty).permit(:comment)
    end
end
