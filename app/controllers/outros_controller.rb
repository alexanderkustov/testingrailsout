class OutrosController < ApplicationController
  # GET /outros
  # GET /outros.json
  def index
    @outros = Outro.all
    @json = @outros.to_gmaps4rails

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @outros }
    end
  end

  # GET /outros/1
  # GET /outros/1.json
  def show
    @outro = Outro.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @outro }
    end
  end

  # GET /outros/new
  # GET /outros/new.json
  def new
    @outro = Outro.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @outro }
    end
  end

  # GET /outros/1/edit
  def edit
    @outro = Outro.find(params[:id])
  end

  # POST /outros
  # POST /outros.json
  def create
    @outro = Outro.new(params[:outro])

    respond_to do |format|
      if @outro.save
        format.html { redirect_to @outro, notice: 'Outro was successfully created.' }
        format.json { render json: @outro, status: :created, location: @outro }
      else
        format.html { render action: "new" }
        format.json { render json: @outro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /outros/1
  # PUT /outros/1.json
  def update
    @outro = Outro.find(params[:id])

    respond_to do |format|
      if @outro.update_attributes(params[:outro])
        format.html { redirect_to @outro, notice: 'Outro was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @outro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /outros/1
  # DELETE /outros/1.json
  def destroy
    @outro = Outro.find(params[:id])
    @outro.destroy

    respond_to do |format|
      format.html { redirect_to outros_url }
      format.json { head :no_content }
    end
  end
end
