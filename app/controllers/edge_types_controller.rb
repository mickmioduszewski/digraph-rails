class EdgeTypesController < ApplicationController
  # GET /edge_types
  # GET /edge_types.xml
  def index
    @edge_types = EdgeType.order('name').all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @edge_types }
    end
  end

  # GET /edge_types/1
  # GET /edge_types/1.xml
  def show
    @edge_type = EdgeType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @edge_type }
    end
  end

  # GET /edge_types/new
  # GET /edge_types/new.xml
  def new
    @edge_type = EdgeType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @edge_type }
    end
  end

  # GET /edge_types/1/edit
  def edit
    @edge_type = EdgeType.find(params[:id])
  end

  # POST /edge_types
  # POST /edge_types.xml
  def create
    @edge_type = EdgeType.new(params[:edge_type])

    respond_to do |format|
      if @edge_type.save
        format.html { redirect_to(@edge_type, :notice => 'Edge type was successfully created.') }
        format.xml  { render :xml => @edge_type, :status => :created, :location => @edge_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @edge_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /edge_types/1
  # PUT /edge_types/1.xml
  def update
    @edge_type = EdgeType.find(params[:id])

    respond_to do |format|
      if @edge_type.update_attributes(params[:edge_type])
        format.html { redirect_to(@edge_type, :notice => 'Edge type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @edge_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /edge_types/1
  # DELETE /edge_types/1.xml
  def destroy
    @edge_type = EdgeType.find(params[:id])
    @edge_type.destroy

    respond_to do |format|
      format.html { redirect_to(edge_types_url) }
      format.xml  { head :ok }
    end
  end
end
