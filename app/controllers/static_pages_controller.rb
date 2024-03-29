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
    @rank = 0
    @title = 'Rankings'
    @results_1 = []
    @results_2 = []
    @results_3 = []
    @results_4 = []
    @total = []
    @totals = []
    @previous_total = []
  end

  def standings
    @position = 0
    @par = 72
    @rounds_completed = 2
    @title = 'Standings'
    @results_1 = []
    @results_2 = []
    @results_3 = []
    @results_4 = []
    @total = []
    @totals = []
    @previous_total = []
  end

  def pools
    @user = current_user
    @title = 'Pools'
  end
end
