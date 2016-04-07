
def rotate_method(message, a_rot, b_rot, c_rot, d_rot)
  start = 0
  result_message = ""
  while start < message.length-1 do
    group = message.slice(start, 4)
    result_message = result_message + get_rotated_char(group[0], a_rot)
    result_message = result_message + get_rotated_char(group[1], b_rot)
    result_message = result_message + get_rotated_char(group[2], c_rot)
    result_message = result_message + get_rotated_char(group[3], d_rot)
    start = start + 4
  end
  result_message
end

def get_rotated_char(char, rotate_by)
  new_char = ""
  unless char == nil
    rotation_index = @default_character_map.find_index(char)
    new_char = @default_character_map.rotate(rotate_by)[rotation_index]
  end
  new_char
end
