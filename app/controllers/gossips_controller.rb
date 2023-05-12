class GossipsController < ApplicationController
  def show

  end

  def index
    @user = User.first.first_name
    @gossips = Gossip.all.reverse
  end

  def new

  end
  def create
    Gossip.create(author: params["author"],title: params["title"],content: params["content"])
    redirect_to root_path, notice: "Le gossip a été créé avec succès."
  end
end