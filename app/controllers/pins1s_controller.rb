class Pins1sController < ApplicationController
  # GET /pins1s
  # GET /pins1s.json
  def index
    @pins1s = Pins1.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pins1s }
    end
  end

  # GET /pins1s/1
  # GET /pins1s/1.json
  def show
    @pins1 = Pins1.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pins1 }
    end
  end

  # GET /pins1s/new
  # GET /pins1s/new.json
  def new
    @pins1 = Pins1.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pins1 }
    end
  end

  # GET /pins1s/1/edit
  def edit
    @pins1 = Pins1.find(params[:id])
  end

  # POST /pins1s
  # POST /pins1s.json
  def create
    @pins1 = Pins1.new(params[:pins1])

    respond_to do |format|
      if @pins1.save
        format.html { redirect_to @pins1, notice: 'Pins1 was successfully created.' }
        format.json { render json: @pins1, status: :created, location: @pins1 }
      else
        format.html { render action: "new" }
        format.json { render json: @pins1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pins1s/1
  # PUT /pins1s/1.json
  def update
    @pins1 = Pins1.find(params[:id])

    respond_to do |format|
      if @pins1.update_attributes(params[:pins1])
        format.html { redirect_to @pins1, notice: 'Pins1 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pins1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pins1s/1
  # DELETE /pins1s/1.json
  def destroy
    @pins1 = Pins1.find(params[:id])
    @pins1.destroy

    respond_to do |format|
      format.html { redirect_to pins1s_url }
      format.json { head :no_content }
    end
  end
end
