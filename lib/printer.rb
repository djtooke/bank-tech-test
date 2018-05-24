require_relative './formatter.rb'

class Printer < Formatter

  def print(history)
    puts format(history)
  end

end
