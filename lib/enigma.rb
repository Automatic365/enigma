require_relative 'offset'

class Enigma
  attr_accessor :message

  def initialize(message)
    @message = message
    @default_character_map = [*"a".."z"]+[*0..9]+[" ", ".", ","]
    @offsets = Offset.new
  end

  def start_encryption
    message = File.read(path)
    encrypted_message = encrypt(message)
  end

  def encrypt(message, key = nil, time = nil)
    @message.each_with_index do |letter, index|
      letter.each_with_index
    end
    #break into array
    #assign a-d rotation to array.
    #each_with_index, each_with_object, rotate

    # key_offset = @offsets.key_offset
    # time_offset = @offsets.time_offset
    a_rot = @offsets.a_rotation
    b_rot = @offsets.b_rotation
    c_rot = @offsets.c_rotation
    d_rot = @offsets.d_rotation
    encrypted_message = rotate_method(message, a_rot, b_rot, c_rot, d_rot)
  end

  def rotate_method(message, a_rot, b_rot, c_rot, d_rot)
    result_message = ""
    message.each_char do |char|
      # rotation_index = default_character_map.find_index(char)
      # new_char = default_character_map.rotate(a_rot)[rotation_index]
      # result_message = result_message + new_char
    end



    start = 0
    result_message = ""
    while start < message.length-1 do
      group = message.slice(start, 4)
      unless group[0] == nil
        rotation_index = default_character_map.find_index(group[0])
        new_char = default_character_map.rotate(a_rot)[rotation_index]
        result_message = result_message + new_char
      end
      unless group[1] == nil
        rotation_index = default_character_map.find_index(group[1])
        new_char = default_character_map.rotate(b_rot)[rotation_index]
        result_message = result_message + new_char
      end
      unless group[2] == nil
        rotation_index = default_character_map.find_index(group[2])
        new_char = default_character_map.rotate(c_rot)[rotation_index]
        result_message = result_message + new_char
      end
      result_message = result_message + get_rotated_char(3, d_rot)
      start = start + 4
    end
    result_message
  end

  def get_rotated_char(index, rotate_by)
    new_char = ""
    unless group[index] == nil
      rotation_index = default_character_map.find_index(group[index])
      new_char = default_character_map.rotate(rotate_by)[rotation_index]
    end
    new_char
  end

  def test
    result_message = ""
    # 0.upto(message.length-1) do |index|
    message.each_char do |char|
      # rotation_index = default_character_map.find_index(char)
      # new_char = a_rotation_array(rotation_index)
      # result_message = result_message + new_char
    end
  end


end
