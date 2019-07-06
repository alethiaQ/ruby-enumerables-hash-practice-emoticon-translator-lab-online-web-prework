# require modules here
require 'yaml'

def load_library(file)
  
  emoticons = YAML.load_file(file)
  emot_hash = { "get_meaning" => {},
  "get_emoticon" => {}
  }
  emoticons.each do |meaning, emot|
    emot_hash["get_emoticon"][emot[0]] = emoticons[meaning][1]
    emot_hash["get_meaning"][emot[1]]= meaning
  end
    emot_hash
end


def get_japanese_emoticon(file, emoji)
  result = load_library(file)["get_emoticon"][emoji]
  if !result.exist
    return "I'm sorry, that emoticon is not known"
  end
  return result
  
end #method end





def get_english_meaning
  # code goes here
end




