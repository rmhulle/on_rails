class DemandasController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_demanda, only: [:show, :edit, :update, :destroy, :vote]

  # GET /demandas
  # GET /demandas.json
  def index
    @demandas = Demanda.all
  end

  # GET /demandas/1
  # GET /demandas/1.json
  def show
  end

  # GET /demandas/new
  def new
    @demanda = Demanda.new
  end

  # GET /demandas/1/edit
  def edit
  end

  # POST /demandas
  # POST /demandas.json
  def create
    @demanda = Demanda.new(demanda_params)
    @demanda.user = current_user

    respond_to do |format|
      if @demanda.save
        format.html { redirect_to @demanda, notice: 'Demanda was successfully created.' }
        format.json { render :show, status: :created, location: @demanda }
      else
        format.html { render :new }
        format.json { render json: @demanda.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /demandas/1
  # PATCH/PUT /demandas/1.json
  def update
    respond_to do |format|
      if @demanda.update(demanda_params)
        format.html { redirect_to @demanda, notice: 'Demanda was successfully updated.' }
        format.json { render :show, status: :ok, location: @demanda }
      else
        format.html { render :edit }
        format.json { render json: @demanda.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /demandas/1
  # DELETE /demandas/1.json
  def destroy
    @demanda.destroy
    respond_to do |format|
      format.html { redirect_to demandas_url, notice: 'Demanda was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  #->Prelang (voting/acts_as_votable)
  def vote

    direction = params[:direction]

    # Make sure we've specified a direction
    raise "No direction parameter specified to #vote action." unless direction

    # Make sure the direction is valid
    unless ["like", "bad"].member? direction
      raise "Direction '#{direction}' is not a valid direction for vote method."
    end

    @demanda.vote_by voter: current_user, vote: direction

    redirect_to action: :index
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_demanda
      @demanda = Demanda.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def demanda_params
      params.require(:demanda).permit(:cidade_id, :user_id, :descricao, :validade, :cidade_origem, :correspondente, :status)
    end
end
