class TopsController < ApplicationController
  def top
  end

  def ima
    t = Time.now
    @ima = t.strftime( "%H時%M分%S秒です" )
  end

  def ajax
    render partial: 'partial/config'
  end
end
