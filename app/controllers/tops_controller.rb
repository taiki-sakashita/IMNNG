class TopsController < ApplicationController
  def top
  end

  def ima
    t = Time.now
    @ima = t.strftime( "%H時%M分%S秒" )
    render :top
  end
end
