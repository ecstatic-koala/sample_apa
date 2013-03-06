# StaticPagesController inherits from the Rails class ApplicationController
class StaticPagesController < ApplicationController
  def home
    puts "home"
  end

  def help
    puts "help"  
  end
end
