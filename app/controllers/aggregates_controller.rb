class AggregatesController < ApplicationController
  # GET /aggregates
  # GET /aggregates.xml
  def index
    @aggregates = Aggregate.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @aggregates }
    end
  end

  # GET /aggregates/1
  # GET /aggregates/1.xml
  def show
    @aggregate = Aggregate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @aggregate }
    end
  end

  # GET /aggregates/new
  # GET /aggregates/new.xml
  def new
    @aggregate = Aggregate.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @aggregate }
    end
  end

  # GET /aggregates/1/edit
  def edit
    @aggregate = Aggregate.find(params[:id])
  end

  # POST /aggregates
  # POST /aggregates.xml
  def create
    @aggregate = Aggregate.new(params[:aggregate])

    respond_to do |format|
      if @aggregate.save
        format.html { redirect_to(@aggregate, :notice => 'Aggregate was successfully created.') }
        format.xml  { render :xml => @aggregate, :status => :created, :location => @aggregate }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @aggregate.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /aggregates/1
  # PUT /aggregates/1.xml
  def update
    @aggregate = Aggregate.find(params[:id])
=begin
    keys = params["aggregate"]["metrics"] 

    metrics = @aggregate.metrics

    keys.each_value { |key|
      metric = Metric.find(:first, :conditions => ["key = ?", key])
      metrics << metric unless metrics.include? metric
    }
=end

    respond_to do |format|
      if @aggregate.update_attributes(params[:aggregate])
        format.html { redirect_to(@aggregate, :notice => 'Aggregate was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @aggregate.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /aggregates/1
  # DELETE /aggregates/1.xml
  def destroy
    @aggregate = Aggregate.find(params[:id])
    @aggregate.destroy

    respond_to do |format|
      format.html { redirect_to(aggregates_url) }
      format.xml  { head :ok }
    end
  end
end
