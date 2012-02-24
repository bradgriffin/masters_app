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
  end

  def standings
    @title = 'Standings'
  end
end
