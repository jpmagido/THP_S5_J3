class GossipsController < ApplicationController
  def index
  	@gossips = Gossip.all 
  end

  def create
    Gossip.create(title: "#{params[:gossip][:title]}", content: "#{params[:gossip][:content]}", user_id: 4)
    redirect_to gossips_index_path
  end


  def done
    
  end

  def new
    @gossip = Gossip.new

  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])
    @gossip.update(title: "#{params[:gossip][:title]}", content: "#{params[:gossip][:content]}", user_id: 4)
    redirect_to gossips_index_path
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to gossips_index_path
  end

  def show
	@id_lien = params[:id]
  @gossip_one = Gossip.find(params[:id])
  @gossip_del = Gossip.find(params[:id]).id
  end

end

