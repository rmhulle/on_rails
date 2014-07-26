class CidadeAtuacaosController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_cidade_atuacao, only: [:show, :edit, :update, :destroy]

  # GET /cidade_atuacaos
  # GET /cidade_atuacaos.json
  def index
    @cidade_atuacaos = CidadeAtuacao.all
  end

  # GET /cidade_atuacaos/1
  # GET /cidade_atuacaos/1.json
  def show
  end

  # GET /cidade_atuacaos/new
  def new
    @cidade_atuacao = CidadeAtuacao.new
  end

  # GET /cidade_atuacaos/1/edit
  def edit
  end

  # POST /cidade_atuacaos
  # POST /cidade_atuacaos.json
  def create
    @cidade_atuacao = CidadeAtuacao.new(cidade_atuacao_params)
    @cidade_atuacao.user = current_user

    respond_to do |format|
      if @cidade_atuacao.save
        format.html { redirect_to @cidade_atuacao, notice: 'Cidade atuacao was successfully created.' }
        format.json { render :show, status: :created, location: @cidade_atuacao }
      else
        format.html { render :new }
        format.json { render json: @cidade_atuacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cidade_atuacaos/1
  # PATCH/PUT /cidade_atuacaos/1.json
  def update
    respond_to do |format|
      if @cidade_atuacao.update(cidade_atuacao_params)
        format.html { redirect_to @cidade_atuacao, notice: 'Cidade atuacao was successfully updated.' }
        format.json { render :show, status: :ok, location: @cidade_atuacao }
      else
        format.html { render :edit }
        format.json { render json: @cidade_atuacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cidade_atuacaos/1
  # DELETE /cidade_atuacaos/1.json
  def destroy
    @cidade_atuacao.destroy
    respond_to do |format|
      format.html { redirect_to cidade_atuacaos_url, notice: 'Cidade atuacao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cidade_atuacao
      @cidade_atuacao = CidadeAtuacao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cidade_atuacao_params
      params.require(:cidade_atuacao).permit(:user_id, :cidade_id)
    end
end
