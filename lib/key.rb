require "pry"
class Key

  attr_reader :key

  def initialize(key = nil)
    @key = rand(10000..99999).to_s
  end


end
