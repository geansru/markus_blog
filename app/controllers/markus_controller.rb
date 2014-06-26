class MarkusController < ApplicationController
  before_action :check
  before_action :set_marku, only: [:show, :edit, :update, :destroy]

  # GET /markus
  # GET /markus.json
  def index
    @markus = Marku.all
  end

  # GET /markus/1
  # GET /markus/1.json
  def show
  end

  # GET /markus/new
  def new
    @marku = Marku.new
  end

  # GET /markus/1/edit
  def edit
  end

  # POST /markus
  # POST /markus.json
  def create
    @marku = Marku.new(marku_params)

    respond_to do |format|
      if @marku.save
        format.html { redirect_to @marku, notice: 'Marku was successfully created.' }
        format.json { render :show, status: :created, location: @marku }
      else
        format.html { render :new }
        format.json { render json: @marku.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /markus/1
  # PATCH/PUT /markus/1.json
  def update
    respond_to do |format|
      if @marku.update(marku_params)
        format.html { redirect_to @marku, notice: 'Marku was successfully updated.' }
        format.json { render :show, status: :ok, location: @marku }
      else
        format.html { render :edit }
        format.json { render json: @marku.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /markus/1
  # DELETE /markus/1.json
  def destroy
    @marku.destroy
    respond_to do |format|
      format.html { redirect_to markus_url, notice: 'Marku was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marku
      @marku = Marku.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def marku_params
      params.require(:marku).permit(:post, :weight, :height, :month, :photo)
    end

end
