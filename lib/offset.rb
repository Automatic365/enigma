require 'pry'
class Offset

  attr_reader :offset, :key_chars

  def initialize
    @key = rand(*10000..99999).to_s
    @date = time_offset
  end

    # def key_offset
    #   # key_chars = [*0..9]
    #   # key_chars.sample(5).join
    # end

  def time_offset(time = nil)
    if time == nil
      t = Time.new
      time = t.strftime("%d%m%y").to_i
    end
    (time ** 2).to_s.slice(-4,4)
  end

  def a_rotation(time=nil, key=nil)
    # @time_value ||= time_offset(time)
    # if @time_value == nil
    #   @time_value = time_offset(time)
    # end
    # do something with @time_value
    # @key_offset ||= key_offset(key)
    # calculate rotation here
    key_offset = @key[0..1]
    time_offset = @date[0]
    key_offset.to_i + time_offset.to_i
  end

  def b_rotation(time=nil, key=nil)
    key_offset = @key[1..2]
    time_offset = @date[1]
  end

  def c_rotation(time=nil, key=nil)
    key_offset = @key[2..3]
    time_offset = @date[2]
  end

  def d_rotation(time=nil, key=nil)
    key_offset = @key[3..4]
    time_offset = @date[3]
  end




end

if __FILE__ == $0
  o = Offset.new
  o.time_offset
end
