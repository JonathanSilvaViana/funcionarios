class ResponsabilidadesController < ApplicationController
  before_action :set_responsabilidade, only: [:show, :edit, :update, :destroy]

  # GET /responsabilidades
  # GET /responsabilidades.json
  def index
    @responsabilidades = Responsabilidade.all
  end

  # GET /responsabilidades/1
  # GET /responsabilidades/1.json
  def show
  end

  # GET /responsabilidades/new
  def new
    @responsabilidade = Responsabilidade.new
  end

  # GET /responsabilidades/1/edit
  def edit
  end

  # POST /responsabilidades
  # POST /responsabilidades.json
  def create
    @responsabilidade = Responsabilidade.new(responsabilidade_params)

    respond_to do |format|
      if @responsabilidade.save
        format.html { redirect_to @responsabilidade, notice: 'Responsabilidade was successfully created.' }
        format.json { render :show, status: :created, location: @responsabilidade }
      else
        format.html { render :new }
        format.json { render json: @responsabilidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /responsabilidades/1
  # PATCH/PUT /responsabilidades/1.json
  def update
    respond_to do |format|
      if @responsabilidade.update(responsabilidade_params)
        format.html { redirect_to @responsabilidade, notice: 'Responsabilidade was successfully updated.' }
        format.json { render :show, status: :ok, location: @responsabilidade }
      else
        format.html { render :edit }
        format.json { render json: @responsabilidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /responsabilidades/1
  # DELETE /responsabilidades/1.json
  def destroy
    @responsabilidade.destroy
    respond_to do |format|
      format.html { redirect_to responsabilidades_url, notice: 'Responsabilidade was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_responsabilidade
      @responsabilidade = Responsabilidade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def responsabilidade_params
      params.require(:responsabilidade).permit(:nome, :observacoes, :funcionarios_id)
    end
end
