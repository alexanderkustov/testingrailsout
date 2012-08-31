class LojasController < ApplicationController
  # GET /lojas
  # GET /lojas.json
  def todos
    @lojas = Loja.all
    @todos = Outdoor.all + Loja.all + Outro.all + LocalDesportivo.all + LojaConcorrencium.all
    @json = @todos.to_gmaps4rails
    

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lojas }
    end
  end

  def index
    @lojas = Loja.all
    @json = @lojas.to_gmaps4rails
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lojas }
    end
  end

  # GET /lojas/1
  # GET /lojas/1.json
  def show
    @loja = Loja.find(params[:id])
   


     @json = Loja.find(params[:id]).to_gmaps4rails
    @loja_concorrencia = LojaConcorrencium.all
    @outdoors = Outdoor.all
    @local_desportivo = LocalDesportivo.all

    @todos = Outdoor.all + Loja.all + Outro.all + LocalDesportivo.all + LojaConcorrencium.all

    @json = @todos.to_gmaps4rails
    
    @zone2 = Loja.first.latitude
    @zone1 = Loja.first.longitude

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @loja }
    end
  end

  # GET /lojas/new
  # GET /lojas/new.json
  def new
    @loja = Loja.new
    @json = Loja.new(params[:id]).to_gmaps4rails

    contacto = @loja.contactos.build
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @loja }
    end
  end

  # GET /lojas/1/edit
  def edit
    @loja = Loja.find(params[:id])
    @json = Loja.find(params[:id]).to_gmaps4rails
  end

  # POST /lojas
  # POST /lojas.json
  def create
    @loja = Loja.new(params[:loja])

    respond_to do |format|
      if @loja.save
        format.html { redirect_to @loja, notice: 'Loja criada com sucesso' }
        format.json { render json: @loja, status: :created, location: @loja }
      else
        format.html { render action: "new" }
        format.json { render json: @loja.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lojas/1
  # PUT /lojas/1.json
  def update
    @loja = Loja.find(params[:id])

    respond_to do |format|
      if @loja.update_attributes(params[:loja])
        format.html { redirect_to @loja, notice: 'Loja actualizada com sucesso' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @loja.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lojas/1
  # DELETE /lojas/1.json
  def destroy
    @loja = Loja.find(params[:id])
    @loja.destroy

    respond_to do |format|
      format.html { redirect_to lojas_url }
      format.json { head :no_content }
    end
  end
end
