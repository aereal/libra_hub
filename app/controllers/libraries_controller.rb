class LibrariesController < ApplicationController
  before_filter :retrieve_library, except: [:index, :new, :create]

  # GET /libraries
  # GET /libraries.json
  def index
    @libraries = Library.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @libraries }
    end
  end

  # GET /libraries/1
  # GET /libraries/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @library }
    end
  end

  # GET /libraries/new
  # GET /libraries/new.json
  def new
    @library = Library.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @library }
    end
  end

  # GET /libraries/1/edit
  def edit
    #
  end

  # POST /libraries
  # POST /libraries.json
  def create
    @library = Library.new(library_params)

    respond_to do |format|
      if @library.save
        format.html { redirect_to @library, notice: 'Library was successfully created.' }
        format.json { render json: @library, status: :created, location: @library }
      else
        format.html { render action: "new" }
        format.json { render json: @library.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /libraries/1
  # PUT /libraries/1.json
  def update
    respond_to do |format|
      if @library.update_attributes(library_params)
        format.html { redirect_to @library, notice: 'Library was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @library.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /libraries/1
  # DELETE /libraries/1.json
  def destroy
    @library.destroy

    respond_to do |format|
      format.html { redirect_to libraries_url }
      format.json { head :no_content }
    end
  end

  private
  def retrieve_library
    @library = Library.find(params[:id])
  end

  def library_params
    params[:library].slice(:name, :slug)
  end
end
