class BookShelvesController < ApplicationController
  # GET /book_shelves
  # GET /book_shelves.json
  def index
    @book_shelves = BookShelf.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @book_shelves }
    end
  end

  # GET /book_shelves/1
  # GET /book_shelves/1.json
  def show
    @book_shelf = BookShelf.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @book_shelf }
    end
  end

  # GET /book_shelves/new
  # GET /book_shelves/new.json
  def new
    @book_shelf = BookShelf.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @book_shelf }
    end
  end

  # GET /book_shelves/1/edit
  def edit
    @book_shelf = BookShelf.find(params[:id])
  end

  # POST /book_shelves
  # POST /book_shelves.json
  def create
    params[:book_shelf]['user'] = User.where(:id => params[:book_shelf]['user']).first
    params[:book_shelf]['book'] = Book.where(:id => params[:book_shelf]['book']).first
    @book_shelf = BookShelf.new(params[:book_shelf])
    respond_to do |format|
      if @book_shelf.save
        format.html { redirect_to @book_shelf, notice: 'Book shelf was successfully created.' }
        format.json { render json: @book_shelf, status: :created, location: @book_shelf }
      else
        format.html { render action: "new" }
        format.json { render json: @book_shelf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /book_shelves/1
  # PUT /book_shelves/1.json
  def update
    params[:book_shelf]['user'] = User.where(:id => params[:book_shelf]['user']).first
    params[:book_shelf]['book'] = Book.where(:id => params[:book_shelf]['book']).first
    @book_shelf = BookShelf.find(params[:id])
    respond_to do |format|
      if @book_shelf.update_attributes(params[:book_shelf])
        format.html { redirect_to @book_shelf, notice: 'Book shelf was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @book_shelf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_shelves/1
  # DELETE /book_shelves/1.json
  def destroy
    @book_shelf = BookShelf.find(params[:id])
    @book_shelf.destroy

    respond_to do |format|
      format.html { redirect_to book_shelves_url }
      format.json { head :no_content }
    end
  end
end
