# require modules here
require "pry"
require "yaml"

def load_library(emoji)
  # code goes her
  emoji = YAML.load_file("./lib/emoticons.yml")
emoji.each do |key, value| emoji[key] = {:english => value[0],:japanese => value[1]
}
end
end

def get_japanese_emoticon(emoji_file, emoticon)
  # code goes here
  emoji_hash = load_library(emoji_file)
  emoji_hash.each do |key, value|
    if value[:english] == emoticon
      return value[:japanese]
    end
  end
  return "Sorry, that emoticon was not found"
end
  

def get_english_meaning(emoji_file, emoticon)
  # code goes here
  emoji_hash = load_library(emoji_file)
  emoji_hash.each do |key,value|
    #binding.pry
    if value[:japanese] == emoticon
      return key
  end
end
return "Sorry, that emoticon was not found"
end