# require modules here
require 'yaml'

def load_library(file)
  
  emoticons = YAML.load_file(file)
  emot_hash = { "get_meaning" => {},
  "get_emoticon" => {}
  }
  emoticons.each do |meaning, emot|
    emot_hash["get_meaning"][meaning[0]] = emoticons[emot][1]
    emot_hash["get_emoticon"][emot[0]]= emoticons[emot][1]
    
    

  end
  

end


def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end