class CktestsController < ApplicationController
  before_action :set_cktest, only: [:show, :edit, :update, :destroy]

  # GET /cktests
  # GET /cktests.json
  def index
    @cktests = Cktest.all
  end

  # GET /cktests/1
  # GET /cktests/1.json
  def show
  end

  # GET /cktests/new
  def new
    @cktest = Cktest.new
  end

  # GET /cktests/1/edit
  def edit
  end

  # POST /cktests
  # POST /cktests.json
  def create
    @cktest = Cktest.new(cktest_params)

    respond_to do |format|
      if @cktest.save
        format.html { redirect_to @cktest, notice: 'Cktest was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cktest }
      else
        format.html { render action: 'new' }
        format.json { render json: @cktest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cktests/1
  # PATCH/PUT /cktests/1.json
  def update
    respond_to do |format|
      if @cktest.update(cktest_params)
        format.html { redirect_to @cktest, notice: 'Cktest was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cktest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cktests/1
  # DELETE /cktests/1.json
  def destroy
    @cktest.destroy
    respond_to do |format|
      format.html { redirect_to cktests_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cktest
      @cktest = Cktest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cktest_params
      params.require(:cktest).permit(:content)
    end
end
