# require modules here
require 'yaml'

def load_library(filepath)
  all_emoticons = YAML.load_file(filepath)
  emoticons = {:get_meaning=>[],:get_emoticon=>[]}
  all_emoticons.map do |values|
    pp values[0]
  end
  return emoticons
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end