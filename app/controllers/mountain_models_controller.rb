class MountainModelsController < ApplicationController
  before_action :set_mountain_model, only: [:show, :edit, :update, :destroy]

  # GET /mountain_models
  # GET /mountain_models.json
  def index
    @mountain_models = MountainModel.all
  end

  # GET /mountain_models/1
  # GET /mountain_models/1.json
  def show
  end

  # GET /mountain_models/new
  def new
    @mountain_model = MountainModel.new
  end

  # GET /mountain_models/1/edit
  def edit
  end

  # POST /mountain_models
  # POST /mountain_models.json
  def create
    @mountain_model = MountainModel.new(mountain_model_params)

    respond_to do |format|
      if @mountain_model.save
        format.html { redirect_to @mountain_model, notice: 'Mountain model was successfully created.' }
        format.json { render :show, status: :created, location: @mountain_model }
      else
        format.html { render :new }
        format.json { render json: @mountain_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mountain_models/1
  # PATCH/PUT /mountain_models/1.json
  def update
    respond_to do |format|
      if @mountain_model.update(mountain_model_params)
        format.html { redirect_to @mountain_model, notice: 'Mountain model was successfully updated.' }
        format.json { render :show, status: :ok, location: @mountain_model }
      else
        format.html { render :edit }
        format.json { render json: @mountain_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mountain_models/1
  # DELETE /mountain_models/1.json
  def destroy
    @mountain_model.destroy
    respond_to do |format|
      format.html { redirect_to mountain_models_url, notice: 'Mountain model was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mountain_model
      @mountain_model = MountainModel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mountain_model_params
      params.fetch(:mountain_model, {})
    end
end
