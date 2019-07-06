# require modules here
require 'yaml'

def load_library(file)
  
  emoticons = YAML.load_file(file_path)
  
  emoticons.each do |meaning|
    meaning.each do |eng, jap|
      if !emoticons["get_meaning"]
      emoticons["get_meaning"] = {}
    end
      if !emoticons["get_emoticon"] 
      emoticons["get_emoticon"] = {}
    end
      if !emoticons["get_meaning"][jap] 
        emoticons["get_meaning"][jap] = meaning
    end
      if !emoticons["get_emoticon"][eng]
        emoticons["get_emoticon"][eng] = jap
    end
    end
   return emoticons
  end
  

end


def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end