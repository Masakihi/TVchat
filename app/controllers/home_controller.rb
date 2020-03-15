class HomeController < ApplicationController
  def top
  end
  def home
    @pages = Page.all
  end
  def new
  end
  def chatroom
    @page = Page.find_by(id: params[:id])
    @posts = Post.where(page_id: params[:id]).order(created_at: :desc)
  end
  def newchat
    @page = Page.find_by(id: params[:page_id])
  end
  def create
    @page = Page.find_by(id: params[:page_id])
    @post = Post.new(content: params[:content], page_id: @page.id )
    @post.save
    redirect_to("/chatroom/#{@page.id}")
  end
  def createpage
    @page = Page.new(name: params[:name])
    @page.save
    redirect_to("/chatroom/#{@page.id}")
  end
end
