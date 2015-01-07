class HumansController < ApplicationController

  def show
    @charity = charity
    puts "hi i am #{@charity.name}"
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
      params[:human][:first_name]=params[:human][:first_name].downcase
      params[:human][:last_name]=params[:human][:last_name].downcase
      params.require('human').permit(:first_name, :last_name, :url, :article)
    end

    def charity
      begin
        charity = Charity.find(params[:charity])
      rescue
        charity = Charity.find(1)
      end
    end

end
