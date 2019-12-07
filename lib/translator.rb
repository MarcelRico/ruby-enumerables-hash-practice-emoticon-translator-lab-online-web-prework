# require modules here
require 'yaml'

def load_library(filepath)
  all_emoticons = YAML.load_file(filepath)
  emoticons = {:get_meaning=>{},:get_emoticon=>{}}
  
  # Add keys and values to get_meaning hash
  all_emoticons.map do |values|
    emoticons[:get_meaning][(values[1][1])] = values[0]
  end
  
  # Add keys and values to get_emoticon hash
  all_emoticons.map do |values|
    pp values[1][0]
  end
  
  
  pp emoticons
  return emoticons
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end