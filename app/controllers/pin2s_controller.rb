class Pin2sController < ApplicationController
  # GET /pin2s
  # GET /pin2s.json
  def index
    @pin2s = Pin2.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pin2s }
    end
  end

  # GET /pin2s/1
  # GET /pin2s/1.json
  def show
    @pin2 = Pin2.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pin2 }
    end
  end

  # GET /pin2s/new
  # GET /pin2s/new.json
  def new
    @pin2 = Pin2.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pin2 }
    end
  end

  # GET /pin2s/1/edit
  def edit
    @pin2 = Pin2.find(params[:id])
  end

  # POST /pin2s
  # POST /pin2s.json
  def create
    @pin2 = Pin2.new(params[:pin2])

    respond_to do |format|
      if @pin2.save
        format.html { redirect_to @pin2, notice: 'Pin2 was successfully created.' }
        format.json { render json: @pin2, status: :created, location: @pin2 }
      else
        format.html { render action: "new" }
        format.json { render json: @pin2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pin2s/1
  # PUT /pin2s/1.json
  def update
    @pin2 = Pin2.find(params[:id])

    respond_to do |format|
      if @pin2.update_attributes(params[:pin2])
        format.html { redirect_to @pin2, notice: 'Pin2 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pin2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pin2s/1
  # DELETE /pin2s/1.json
  def destroy
    @pin2 = Pin2.find(params[:id])
    @pin2.destroy

    respond_to do |format|
      format.html { redirect_to pin2s_url }
      format.json { head :no_content }
    end
  end
end
