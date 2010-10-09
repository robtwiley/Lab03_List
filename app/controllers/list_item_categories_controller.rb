class ListItemCategoriesController < ApplicationController
  # GET /list_item_categories
  # GET /list_item_categories.xml
  def index
    @list_item_categories = ListItemCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @list_item_categories }
    end
  end

  # GET /list_item_categories/1
  # GET /list_item_categories/1.xml
  def show
    @list_item_category = ListItemCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @list_item_category }
    end
  end

  # GET /list_item_categories/new
  # GET /list_item_categories/new.xml
  def new
    @list_item_category = ListItemCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @list_item_category }
    end
  end

  # GET /list_item_categories/1/edit
  def edit
    @list_item_category = ListItemCategory.find(params[:id])
  end

  # POST /list_item_categories
  # POST /list_item_categories.xml
  def create
    @list_item_category = ListItemCategory.new(params[:list_item_category])

    respond_to do |format|
      if @list_item_category.save
        format.html { redirect_to(@list_item_category, :notice => 'List item category was successfully created.') }
        format.xml  { render :xml => @list_item_category, :status => :created, :location => @list_item_category }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @list_item_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /list_item_categories/1
  # PUT /list_item_categories/1.xml
  def update
    @list_item_category = ListItemCategory.find(params[:id])

    respond_to do |format|
      if @list_item_category.update_attributes(params[:list_item_category])
        format.html { redirect_to(@list_item_category, :notice => 'List item category was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @list_item_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /list_item_categories/1
  # DELETE /list_item_categories/1.xml
  def destroy
    @list_item_category = ListItemCategory.find(params[:id])
    @list_item_category.destroy

    respond_to do |format|
      format.html { redirect_to(list_item_categories_url) }
      format.xml  { head :ok }
    end
  end
end
