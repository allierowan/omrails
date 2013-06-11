class GupbosController < ApplicationController
  before_filter :authenticate_user!, except: [:index]
  # GET /gupbos
  # GET /gupbos.json
  def index
    @gupbos = Gupbo.order("created_at desc").page(params[:page]).per_page(20)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gupbos }
    end
  end

  # GET /gupbos/1
  # GET /gupbos/1.json
  def show
    @gupbo = Gupbo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gupbo }
    end
  end

  # GET /gupbos/new
  # GET /gupbos/new.json
  def new
    @gupbo = current_user.gupbo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gupbo }
    end
  end

  # GET /gupbos/1/edit
  def edit
    @gupbo = current_user.gupbos.find(params[:id])
  end

  # POST /gupbos
  # POST /gupbos.json
  def create
    @gupbo = current_user.gupbos.new(params[:gupbo])

    respond_to do |format|
      if @gupbo.save
        format.html { redirect_to @gupbo, notice: 'Gupbo was successfully created.' }
        format.json { render json: @gupbo, status: :created, location: @gupbo }
      else
        format.html { render action: "new" }
        format.json { render json: @gupbo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gupbos/1
  # PUT /gupbos/1.json
  def update
    @gupbo = current_user.gupbos.find(params[:id])

    respond_to do |format|
      if @gupbo.update_attributes(params[:gupbo])
        format.html { redirect_to @gupbo, notice: 'Gupbo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gupbo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gupbos/1
  # DELETE /gupbos/1.json
  def destroy
    @gupbo = current_user.gupbos.find(params[:id])
    @gupbo.destroy

    respond_to do |format|
      format.html { redirect_to gupbos_url }
      format.json { head :no_content }
    end
  end
end
