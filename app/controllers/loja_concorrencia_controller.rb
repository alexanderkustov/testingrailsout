class LojaConcorrenciaController < ApplicationController
  # GET /loja_concorrencia
  # GET /loja_concorrencia.json
  def index
    @loja_concorrencia = LojaConcorrencium.all
    @json = @loja_concorrencia.to_gmaps4rails

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @loja_concorrencia }
    end
  end

  # GET /loja_concorrencia/1
  # GET /loja_concorrencia/1.json
  def show
    @loja_concorrencium = LojaConcorrencium.find(params[:id])
    @json = LojaConcorrencium.find(params[:id]).to_gmaps4rails

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @loja_concorrencium }
    end
  end

  # GET /loja_concorrencia/new
  # GET /loja_concorrencia/new.json
  def new
    @loja_concorrencium = LojaConcorrencium.new
    @json = LojaConcorrencium.new(params[:id]).to_gmaps4rails

    ranking = @loja_concorrencium.rankings.build
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @loja_concorrencium }
    end
  end

  # GET /loja_concorrencia/1/edit
  def edit
    @loja_concorrencium = LojaConcorrencium.find(params[:id])
    @json = LojaConcorrencium.find(params[:id]).to_gmaps4rails
  end

  # POST /loja_concorrencia
  # POST /loja_concorrencia.json
  def create
    @loja_concorrencium = LojaConcorrencium.new(params[:loja_concorrencium])

    respond_to do |format|
      if @loja_concorrencium.save
        format.html { redirect_to @loja_concorrencium, notice: 'Loja concorrencium was successfully created.' }
        format.json { render json: @loja_concorrencium, status: :created, location: @loja_concorrencium }
      else
        format.html { render action: "new" }
        format.json { render json: @loja_concorrencium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /loja_concorrencia/1
  # PUT /loja_concorrencia/1.json
  def update
    @loja_concorrencium = LojaConcorrencium.find(params[:id])

    respond_to do |format|
      if @loja_concorrencium.update_attributes(params[:loja_concorrencium])
        format.html { redirect_to @loja_concorrencium, notice: 'Loja concorrencium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @loja_concorrencium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loja_concorrencia/1
  # DELETE /loja_concorrencia/1.json
  def destroy
    @loja_concorrencium = LojaConcorrencium.find(params[:id])
    @loja_concorrencium.destroy

    respond_to do |format|
      format.html { redirect_to loja_concorrencia_url }
      format.json { head :no_content }
    end
  end
end
