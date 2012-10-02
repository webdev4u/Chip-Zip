class CategoriesController < ApplicationController
  # GET /categories
  # GET /categories.json
  def index
    @categories = Category.find(:all, :order => "menu_order")
    @parents = Category.all
    # @categories_prepared = Array.new

    # i = 0
    # @categories.each do |category|
    #   @categories_prepared[i]['id'] = category.id
    #   @categories_prepared[i]['link'] = category.link
    #   @categories_prepared[i]['name'] = category.name
    #   @categories_prepared[i]['order'] = category.order

    #   @parents.each do |parent|
    #     if category.parent == parent.id
    #       categories_prepared[i]['parent_name'] = parent.name
    #     else
    #       categories_prepared[i]['parent_name'] = ''
    #     end
    #   end
    #   i += 1
    # end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @categories }
    end
  end

  # GET /categories/1
  # GET /categories/1.json
  def show
    @category = Category.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @category }
    end
  end

  # GET /categories/new
  # GET /categories/new.json
  def new
    @category = Category.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @category }
    end
  end

  # GET /categories/1/edit
  def edit
    @category = Category.find(params[:id])
  end

  # POST /categories
  # POST /categories.json
  def create
    @category = Category.new(params[:category])

    respond_to do |format|
      if @category.save
        format.html { redirect_to @category, notice: 'Category was successfully created.' }
        format.json { render json: @category, status: :created, location: @category }
      else
        format.html { render action: "new" }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /categories/1
  # PUT /categories/1.json
  def update
    @category = Category.find(params[:id])

    respond_to do |format|
      if @category.update_attributes(params[:category])
        format.html { redirect_to @category, notice: 'Category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categories/1
  # DELETE /categories/1.json
  def destroy
    @category = Category.find(params[:id])
    @category.destroy

    respond_to do |format|
      format.html { redirect_to categories_url }
      format.json { head :no_content }
    end
  end
end
