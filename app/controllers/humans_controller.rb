class HumansController < ApplicationController

  def show
    @humans = Human.all
  end

  def bio
    @human = Human.where({first_name: params[:first_name], last_name: params[:last_name], id: params[:id]}).to_a[0]
    puts @human
    puts @human.id
  end

  def new
    @human = Human.new
  end

  def create
    @human = Human.new(safe_human)
    @human.save
    redirect_to root_path
  end

  def edit
  end

  private
    def safe_human
      parans[:first_name]=params[:first_name].downcase
      parans[:last_name]=params[:last_name].downcase
      params.require('human').permit(:first_name, :last_name, :url, :article)
    end

end
