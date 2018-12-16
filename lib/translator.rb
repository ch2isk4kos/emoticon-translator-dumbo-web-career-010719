# require modules here
require "yaml"
require "pry"
# emojis = YAML.load_file('emoticons.yml')

def load_library(file_path)
    # code goes here
    emojis = YAML.load_file(file_path)
    new_hash = {"get_meaning" => {}, "get_emoticon" => {}}
    emojis.each do |meaning, emoticon|
        new_hash["get_meaning"][emoticon[1]] = meaning
        new_hash["get_emoticon"][emoticon[0]] = emoticon[1]
    end
    new_hash
end

def get_japanese_emoticon
    # code goes here

end

def get_english_meaning
    # code goes here
end
