class PathTrainsController < ApplicationController
  # GET /path_trains
  # GET /path_trains.json
  def index
    @path_trains = PathTrain.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @path_trains }
    end
  end

  # GET /path_trains/1
  # GET /path_trains/1.json
  def show
    @path_train = PathTrain.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @path_train }
    end
  end

  # GET /path_trains/new
  # GET /path_trains/new.json
  def new
    @path_train = PathTrain.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @path_train }
    end
  end

  # GET /path_trains/1/edit
  def edit
    @path_train = PathTrain.find(params[:id])
  end

  # POST /path_trains
  # POST /path_trains.json
  def create
    @path_train = PathTrain.new(params[:path_train])

    respond_to do |format|
      if @path_train.save
        format.html { redirect_to @path_train, notice: 'Path train was successfully created.' }
        format.json { render json: @path_train, status: :created, location: @path_train }
      else
        format.html { render action: "new" }
        format.json { render json: @path_train.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /path_trains/1
  # PUT /path_trains/1.json
  def update
    @path_train = PathTrain.find(params[:id])

    respond_to do |format|
      if @path_train.update_attributes(params[:path_train])
        format.html { redirect_to @path_train, notice: 'Path train was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @path_train.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /path_trains/1
  # DELETE /path_trains/1.json
  def destroy
    @path_train = PathTrain.find(params[:id])
    @path_train.destroy

    respond_to do |format|
      format.html { redirect_to path_trains_url }
      format.json { head :no_content }
    end
  end
end
