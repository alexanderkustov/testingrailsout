class LocalDesportivosController < ApplicationController
  # GET /local_desportivos
  # GET /local_desportivos.json
  def index
    @local_desportivos = LocalDesportivo.all
    @json = @local_desportivos.to_gmaps4rails

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @local_desportivos }
    end
  end

  # GET /local_desportivos/1
  # GET /local_desportivos/1.json
  def show
    @local_desportivo = LocalDesportivo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @local_desportivo }
    end
  end

  # GET /local_desportivos/new
  # GET /local_desportivos/new.json
  def new
    @local_desportivo = LocalDesportivo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @local_desportivo }
    end
  end

  # GET /local_desportivos/1/edit
  def edit
    @local_desportivo = LocalDesportivo.find(params[:id])
  end

  # POST /local_desportivos
  # POST /local_desportivos.json
  def create
    @local_desportivo = LocalDesportivo.new(params[:local_desportivo])

    respond_to do |format|
      if @local_desportivo.save
        format.html { redirect_to @local_desportivo, notice: 'Local desportivo was successfully created.' }
        format.json { render json: @local_desportivo, status: :created, location: @local_desportivo }
      else
        format.html { render action: "new" }
        format.json { render json: @local_desportivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /local_desportivos/1
  # PUT /local_desportivos/1.json
  def update
    @local_desportivo = LocalDesportivo.find(params[:id])

    respond_to do |format|
      if @local_desportivo.update_attributes(params[:local_desportivo])
        format.html { redirect_to @local_desportivo, notice: 'Local desportivo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @local_desportivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /local_desportivos/1
  # DELETE /local_desportivos/1.json
  def destroy
    @local_desportivo = LocalDesportivo.find(params[:id])
    @local_desportivo.destroy

    respond_to do |format|
      format.html { redirect_to local_desportivos_url }
      format.json { head :no_content }
    end
  end
end
