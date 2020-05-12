class CoconutsController < ApplicationController
  before_action :set_coconut, only: [:show, :edit, :update, :destroy]

  # GET /coconuts
  # GET /coconuts.json
  def index
    @coconuts = Coconut.all
  end

  # GET /coconuts/1
  # GET /coconuts/1.json
  def show
  end

  # GET /coconuts/new
  def new
    @coconut = Coconut.new
  end

  # GET /coconuts/1/edit
  def edit
  end

  # POST /coconuts
  # POST /coconuts.json
  def create
    @coconut = Coconut.new(coconut_params)

    respond_to do |format|
      if @coconut.save
        format.html { redirect_to @coconut, notice: 'Coconut was successfully created.' }
        format.json { render :show, status: :created, location: @coconut }
      else
        format.html { render :new }
        format.json { render json: @coconut.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coconuts/1
  # PATCH/PUT /coconuts/1.json
  def update
    respond_to do |format|
      if @coconut.update(coconut_params)
        format.html { redirect_to @coconut, notice: 'Coconut was successfully updated.' }
        format.json { render :show, status: :ok, location: @coconut }
      else
        format.html { render :edit }
        format.json { render json: @coconut.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coconuts/1
  # DELETE /coconuts/1.json
  def destroy
    @coconut.destroy
    respond_to do |format|
      format.html { redirect_to coconuts_url, notice: 'Coconut was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coconut
      @coconut = Coconut.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def coconut_params
      params.require(:coconut).permit(:name, :diameter, :weight)
    end
end
