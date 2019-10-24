class CentroDeTreinamentosController < ApplicationController
  before_action :set_centro_de_treinamento, only: [:show, :edit, :update, :destroy]

  # GET /centro_de_treinamentos
  # GET /centro_de_treinamentos.json
  def index
    @centro_de_treinamentos = CentroDeTreinamento.all
  end

  # GET /centro_de_treinamentos/1
  # GET /centro_de_treinamentos/1.json
  def show
  end

  # GET /centro_de_treinamentos/new
  def new
    @centro_de_treinamento = CentroDeTreinamento.new
  end

  # GET /centro_de_treinamentos/1/edit
  def edit
  end

  # POST /centro_de_treinamentos
  # POST /centro_de_treinamentos.json
  def create
    @centro_de_treinamento = CentroDeTreinamento.new(centro_de_treinamento_params)

    respond_to do |format|
      if @centro_de_treinamento.save
        format.html { redirect_to @centro_de_treinamento, notice: 'Centro de treinamento was successfully created.' }
        format.json { render :show, status: :created, location: @centro_de_treinamento }
      else
        format.html { render :new }
        format.json { render json: @centro_de_treinamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /centro_de_treinamentos/1
  # PATCH/PUT /centro_de_treinamentos/1.json
  def update
    respond_to do |format|
      if @centro_de_treinamento.update(centro_de_treinamento_params)
        format.html { redirect_to @centro_de_treinamento, notice: 'Centro de treinamento was successfully updated.' }
        format.json { render :show, status: :ok, location: @centro_de_treinamento }
      else
        format.html { render :edit }
        format.json { render json: @centro_de_treinamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /centro_de_treinamentos/1
  # DELETE /centro_de_treinamentos/1.json
  def destroy
    @centro_de_treinamento.destroy
    respond_to do |format|
      format.html { redirect_to centro_de_treinamentos_url, notice: 'Centro de treinamento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_centro_de_treinamento
      @centro_de_treinamento = CentroDeTreinamento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def centro_de_treinamento_params
      params.require(:centro_de_treinamento).permit(:nome, :cnpj, :responsavel)
    end
end
