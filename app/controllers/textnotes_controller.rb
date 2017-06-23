class TextnotesController < ApplicationController
  before_action :set_textnote, only: [:show, :edit, :update, :destroy]

  # GET /textnotes
  # GET /textnotes.json
  def index
    @textnotes = Textnote.all
  end

  # GET /textnotes/1
  # GET /textnotes/1.json
  def show
  end

  # GET /textnotes/new
  def new
    @textnote = Textnote.new
  end

  # GET /textnotes/1/edit
  def edit
  end

  # POST /textnotes
  # POST /textnotes.json
  def create
    @textnote = Textnote.new(textnote_params)

    respond_to do |format|
      if @textnote.save
        format.html { redirect_to @textnote, notice: 'Textnote was successfully created.' }
        format.json { render :show, status: :created, location: @textnote }
      else
        format.html { render :new }
        format.json { render json: @textnote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /textnotes/1
  # PATCH/PUT /textnotes/1.json
  def update
    respond_to do |format|
      if @textnote.update(textnote_params)
        format.html { redirect_to @textnote, notice: 'Textnote was successfully updated.' }
        format.json { render :show, status: :ok, location: @textnote }
      else
        format.html { render :edit }
        format.json { render json: @textnote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /textnotes/1
  # DELETE /textnotes/1.json
  def destroy
    @textnote.destroy
    respond_to do |format|
      format.html { redirect_to textnotes_url, notice: 'Textnote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_textnote
      @textnote = Textnote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def textnote_params
      params.require(:textnote).permit(:content, :usuario_id)
    end
end
