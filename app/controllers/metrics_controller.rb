require 'gruff'

class MetricsController < ApplicationController
  # GET /metrics
  # GET /metrics.xml
  def index
    @metrics = Metric.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @metrics }
    end
  end

  # GET /metrics/1
  # GET /metrics/1.xml
  def show
    @metric = Metric.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @metric }
    end
  end

  # GET /metrics/new
  # GET /metrics/new.xml
  def new
    logger.debug "New metric"
    @metric = Metric.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @metric }
    end
  end

  # GET /metrics/1/edit
  def edit
    @metric = Metric.find(params[:id])
  end

  # POST /metrics
  # POST /metrics.xml
  def create
    logger.debug "Creating new metric"
    @metric = Metric.new(params[:metric])

    respond_to do |format|
      if @metric.save
        format.html { redirect_to(@metric, :notice => 'Metric was successfully created.') }
        format.xml  { render :xml => @metric, :status => :created, :location => @metric }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @metric.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /metrics/1
  # PUT /metrics/1.xml
  def update
    @metric = Metric.find(params[:id])

    respond_to do |format|
      if @metric.update_attributes(params[:metric])
        format.html { redirect_to(@metric, :notice => 'Metric was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @metric.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /metrics/1
  # DELETE /metrics/1.xml
  def destroy
    @metric = Metric.find(params[:id])
    @metric.destroy

    respond_to do |format|
      format.html { redirect_to(metrics_url) }
      format.xml  { head :ok }
    end
  end

  def graph
    @metric = Metric.find(params[:id])
    g = Gruff::Line.new

    g.theme = {
      :colors => %w(orange purple green red),
      :marker_color => 'blue',
      :background_colors => %w(white white)
    }
    data = []
    labels = {}
    i = 0
    @metric.data_units.each{ |data_unit|
      data.push data_unit.data_point
      labels[i] = data_unit.when.strftime("%d/%m/%y")
      i+=1
    }
    g.data "Data", data
    g.labels = labels


    send_data g.to_blob, :type => 'image/png', :disposition => 'inline'
  end
end
