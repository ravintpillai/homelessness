class HumansController < ApplicationController

  def show
    @humans = Human.all
  end

end
