# require modules here
require 'yaml'

def load_library(file)
  
  emoticons = YAML.load_file(file)
  emoticons.each do |meaning|
    if !emoticons["get_meaning"]
      emoticons["get_meaning"] = {}
    end
    if !emoticons["get_emoticon"] 
      emoticons["get_emoticon"] = {}
    end
    
    meaning.each do |eng, jap|
      emoticons["get_meaning"][jap] = meaning
      emoticons["get_emoticon"]
      
      
    
    
  return emoticons

end


def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end