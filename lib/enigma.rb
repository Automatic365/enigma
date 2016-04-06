require_relative 'offset'
class Enigma

  def initialize
    @default_character_map = [*"a".."z"]+[*0..9]+[" ", ".", ","]
    @offsets = Offset.new
  end

  def start_encryption
    message = File.read(path)
    encrypted_message = encrypt(message)

  end


  def encrypt(message)
    key_offset = @offsets.key_offset
    time_offset = @offsets.time_offset
    a_rot = @offsets.a_rotation
    b_rot = @offsets.b_rotation
    c_rot = @offsets.c_rotation
    d_rot = @offsets.d_rotation
    encrypted_message = rotate_method(message, a_rot, b_rot, c_rot, d_rot)
  end

  def rotate_method(message, a_rot, b_rot, c_rot, d_rot)

  end



end
