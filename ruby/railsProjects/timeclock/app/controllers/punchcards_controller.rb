class PunchcardsController < ApplicationController
  before_action :set_punchcard, only: [:show, :edit, :update, :destroy]

  # GET /punchcards
  # GET /punchcards.json
  def index
    @punchcards = Punchcard.all
  end

  # GET /punchcards/1
  # GET /punchcards/1.json
  def show
  end

  # GET /punchcards/new
  def new
    @punchcard = Punchcard.new
  end

  # GET /punchcards/1/edit
  def edit
  end

  # POST /punchcards
  # POST /punchcards.json
  def create
    @punchcard = Punchcard.new(params)

    respond_to do |format|
      if @punchcard.save
        format.html { redirect_to @punchcard, notice: 'Punchcard was successfully created.' }
        format.json { render :show, status: :created, location: @punchcard }
      else
        format.html { render :new }
        format.json { render json: @punchcard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /punchcards/1
  # PATCH/PUT /punchcards/1.json
  def update
    respond_to do |format|
      if @punchcard.update(punchcard_params)
        format.html { redirect_to @punchcard, notice: 'Punchcard was successfully updated.' }
        format.json { render :show, status: :ok, location: @punchcard }
      else
        format.html { render :edit }
        format.json { render json: @punchcard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /punchcards/1
  # DELETE /punchcards/1.json
  def destroy
    @punchcard.destroy
    respond_to do |format|
      format.html { redirect_to punchcards_url, notice: 'Punchcard was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_punchcard
      @punchcard = Punchcard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def punchcard_params
      params.require(:punchcard).permit(:timein, :timeout, :user_id)
    end
end
