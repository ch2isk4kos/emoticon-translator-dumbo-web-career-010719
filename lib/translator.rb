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


def get_japanese_emoticon(file_path = './lib/emoticons.yml', english_emoticon)
    emojis = load_library(file_path)

    if emojis["get_emoticon"].include?(english_emoticon)
        emojis["get_emoticon"][english_emoticon]
    else
        "Sorry, that emoticon was not found"
    end
end



def get_english_meaning
    # code goes here
end
