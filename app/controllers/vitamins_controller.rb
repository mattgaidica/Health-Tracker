class VitaminsController < ApplicationController
  # GET /vitamins
  # GET /vitamins.json
  def index
    @vitamins = Vitamin.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @vitamins }
    end
  end

  # GET /vitamins/1
  # GET /vitamins/1.json
  def show
    @vitamin = Vitamin.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @vitamin }
    end
  end

  # GET /vitamins/new
  # GET /vitamins/new.json
  def new
    @vitamin = Vitamin.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @vitamin }
    end
  end

  # GET /vitamins/1/edit
  def edit
    @vitamin = Vitamin.find(params[:id])
  end

  # POST /vitamins
  # POST /vitamins.json
  def create
    @vitamin = Vitamin.new(params[:vitamin])

    respond_to do |format|
      if @vitamin.save
        format.html { redirect_to @vitamin, notice: 'Vitamin was successfully created.' }
        format.json { render json: @vitamin, status: :created, location: @vitamin }
      else
        format.html { render action: "new" }
        format.json { render json: @vitamin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /vitamins/1
  # PUT /vitamins/1.json
  def update
    @vitamin = Vitamin.find(params[:id])

    respond_to do |format|
      if @vitamin.update_attributes(params[:vitamin])
        format.html { redirect_to @vitamin, notice: 'Vitamin was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @vitamin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vitamins/1
  # DELETE /vitamins/1.json
  def destroy
    @vitamin = Vitamin.find(params[:id])
    @vitamin.destroy

    respond_to do |format|
      format.html { redirect_to vitamins_url }
      format.json { head :ok }
    end
  end
end
