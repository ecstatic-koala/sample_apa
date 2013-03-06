# StaticPagesController inherits from the Rails class ApplicationController
class StaticPagesController < ApplicationController
  def home
    puts "home <--------------------- // StaticPagesController"
  end

  def help
    puts "help <--------------------- // StaticPagesController"
  end
  
  def about
    puts "about <--------------------- // StaticPagesController"
  end  
end
