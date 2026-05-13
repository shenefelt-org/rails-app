class TechnicansController < ApplicationController
  before_action :set_technican, only: %i[ show edit update destroy ]

  # GET /technicans or /technicans.json
  def index
    @technicans = Technican.all
    render json: {
      message: "hi boo",
      data: @technicans
    }
  end

  # GET /technicans/1 or /technicans/1.json
  def show
  end

  # GET /technicans/new
  def new
    @technican = Technican.new
  end

  # GET /technicans/1/edit
  def edit
  end

  # POST /technicans or /technicans.json
  def create
    @technican = Technican.new(technican_params)

    respond_to do |format|
      if @technican.save
        format.html { redirect_to @technican, notice: "Technican was successfully created." }
        format.json { render :show, status: :created, location: @technican }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @technican.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /technicans/1 or /technicans/1.json
  def update
    respond_to do |format|
      if @technican.update(technican_params)
        format.html { redirect_to @technican, notice: "Technican was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @technican }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @technican.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /technicans/1 or /technicans/1.json
  def destroy
    @technican.destroy!

    respond_to do |format|
      format.html { redirect_to technicans_path, notice: "Technican was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_technican
      @technican = Technican.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def technican_params
      params.expect(technican: [ :name ])
    end
end
