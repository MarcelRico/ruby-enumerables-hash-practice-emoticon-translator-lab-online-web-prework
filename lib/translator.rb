# require modules here
require 'yaml'

def load_library(filepath)
  all_emoticons = YAML.load_file(filepath)
  emoticons = {:get_meaning=>{},:get_emoticon=>{}}
  
  # Add keys and values to get_meaning hash
  all_emoticons.map do |values|
    japanese_emoticon = values[1][1]
    english_meaning = values[0]
    emoticons[:get_meaning][(japanese_emoticon)] = english_meaning
  end
  
  # Add keys and values to get_emoticon hash
  all_emoticons.map do |values|
    english_emoticon = values[1][0]
    japanese_emoticon = values[1][1]
    emoticons[:get_emoticon][english_emoticon] = japanese_emoticon
  end
  
  return emoticons
end

def get_japanese_emoticon(filepath,emoticon)
  emoticons = load_library(filepath)
  pp emoticons
end

def get_english_meaning
  # code goes here
end