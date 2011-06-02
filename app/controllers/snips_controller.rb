class SnipsController < ApplicationController
  # GET /snips
  # GET /snips.xml
  def index
    @snips = Snip.all
    @snip = Snip.new
    #@snips.each do |snip|
      #snip.snippets.build
    #end
    1.times {@snip.snippets.build}
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @snips }
    end
  end

  # GET /snips/1
  # GET /snips/1.xml
  def show
    @snip = Snip.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @snip }
    end
  end

  # GET /snips/new
  # GET /snips/new.xml
  def new
    @snip = Snip.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @snip }
    end
  end

  # GET /snips/1/edit
  def edit
    @snip = Snip.find(params[:id])
  end

  # POST /snips
  # POST /snips.xml
  def create
    @snip = Snip.new(params[:snip])

    respond_to do |format|
      if @snip.save
        format.html { redirect_to(snips_url)}
        format.js
        format.xml  { render :xml => @snip, :status => :created, :location => @snip }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @snip.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /snips/1
  # PUT /snips/1.xml
  def update
    @snip = Snip.find(params[:id])
    @snip.update_attributes params[:snip]
    respond_to do |format|
      if @snip.update_attributes(params[:snip])
        format.html { redirect_to(@snip, :notice => 'Snip was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @snip.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /snips/1
  # DELETE /snips/1.xml
  def destroy
    @snip = Snip.find(params[:id])
    @snip.destroy

    respond_to do |format|
      format.html { redirect_to(snips_url) }
      format.xml  { head :ok }
    end
  end
end
