class Offset
  attr_reader :offset, :key, :date
  def initialize
    @key = rand(10000..99999).to_s
    @date = time_offset
  end

  def time_offset(time = nil)
    if time == nil
      t = Time.new
      time = t.strftime("%d%m%y").to_i
    end
    (time ** 2).to_s.slice(-4,4)
  end

  def a_rotation(time=nil, key=nil)
    key_offset = @key[0..1]
    time_offset = @date[0]
    key_offset.to_i + time_offset.to_i
  end

  def b_rotation(time=nil, key=nil)
    key_offset = @key[1..2]
    time_offset = @date[1]
    key_offset.to_i + time_offset.to_i
  end

  def c_rotation(time=nil, key=nil)
    key_offset = @key[2..3]
    time_offset = @date[2]
    key_offset.to_i + time_offset.to_i
  end

  def d_rotation(time=nil, key=nil)
    key_offset = @key[3..4]
    time_offset = @date[3]
    key_offset.to_i + time_offset.to_i
  end

end
