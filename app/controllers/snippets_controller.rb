class SnippetsController < ApplicationController

  def index
    @snippets = Snippet.all
    @snippet = Snippet.new
    @snip = Snip.new
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @snippets }
    end
  end

  def show
    @snippet = Snippet.find(params[:id])
    @snip = Snip.new
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @snippet }
    end
  end

  def new
    @snippet = Snippet.new
    @snip = Snip.new
  end

  def edit
    @snippet = Snippet.find(params[:id])
  end

  def create
    @snip = Snip.new
    @snippet = @snip.snippets.new(params[:snippet])
    respond_to do |format|
      if @snippet.save
        format.html { redirect_to(root_url) }
      else
        redirect_to root_url
      end
    end
  end

  def update
    @snippet = Snippet.find(params[:id])

    respond_to do |format|
      if @snippet.update_attributes(params[:snippet])
        format.html { redirect_to(root_url, :notice => 'Snippet was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @snippet.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /snippets/1
  # DELETE /snippets/1.xml
  def destroy
    @snippet = Snippet.find(params[:id])
    @snippet.destroy

    respond_to do |format|
      format.html { redirect_to(root_url) }
      format.xml  { head :ok }
    end
  end
end
