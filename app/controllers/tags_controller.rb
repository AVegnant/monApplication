class TagsController < ApplicationController
  def show
    @tag = Tag.find(params[:id])
  end
  
  def index
    @tags = Tag.all
  end
  
  before_action :require_login, only: [:destroy]
  def destroy
    @tag = Tag.find(params[:id]).destroy
	@tag.save
	
	flash.notice = "Le Tag '#{@tag.title}' is Destroyed!"
	
	redirect_to tags_path
  end
  
end
