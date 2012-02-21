class CaffeinesController < ApplicationController
  # GET /caffeines
  # GET /caffeines.json
  def index
    @caffeines = Caffeine.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @caffeines }
    end
  end

  # GET /caffeines/1
  # GET /caffeines/1.json
  def show
    @caffeine = Caffeine.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @caffeine }
    end
  end

  # GET /caffeines/new
  # GET /caffeines/new.json
  def new
    @caffeine = Caffeine.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @caffeine }
    end
  end

  # GET /caffeines/1/edit
  def edit
    @caffeine = Caffeine.find(params[:id])
  end

  # POST /caffeines
  # POST /caffeines.json
  def create
    @caffeine = Caffeine.new(params[:caffeine])

    respond_to do |format|
      if @caffeine.save
        format.html { redirect_to @caffeine, notice: 'Caffeine was successfully created.' }
        format.json { render json: @caffeine, status: :created, location: @caffeine }
      else
        format.html { render action: "new" }
        format.json { render json: @caffeine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /caffeines/1
  # PUT /caffeines/1.json
  def update
    @caffeine = Caffeine.find(params[:id])

    respond_to do |format|
      if @caffeine.update_attributes(params[:caffeine])
        format.html { redirect_to @caffeine, notice: 'Caffeine was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @caffeine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caffeines/1
  # DELETE /caffeines/1.json
  def destroy
    @caffeine = Caffeine.find(params[:id])
    @caffeine.destroy

    respond_to do |format|
      format.html { redirect_to caffeines_url }
      format.json { head :ok }
    end
  end
end
