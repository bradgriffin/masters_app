class StaticPagesController < ApplicationController
  def home
    @title = 'Home'
  end

  def about
    @title = 'About Me'
  end

  def contact
    @title = 'Contact'
  end

  def rankings
    @title = 'Rankings'
    @results_1 = []
    @results_2 = []
    @results_3 = []
    @results_4 = []
    @total = []
  end

  def standings
    @title = 'Standings'
  end
end
