# require modules here
require "yaml"
# emojis = YAML.load_file('emoticons.yml')

def load_library(file_path)
    # code goes here
    library = YAML.load_file(file_path)
    new_hash = {"get_meaning" => {}, "get_emoticon" => {}}
    library.each do |meaning, emoticons|
        new_hash["get_meaning"][emoticons[1]] = meaning
        new_hash["get_emoticon"][emoticons[0]] = emoticons[1]
    end
    new_hash
end

def get_japanese_emoticon
    # code goes here
    
end

def get_english_meaning
    # code goes here
end
