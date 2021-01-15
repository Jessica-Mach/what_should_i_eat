# frozen_string_literal: true

require_relative "what_should_i_eat/version"
require 'http'
require 'json'

module WhatShouldIEat
  class Error < StandardError; end
  # Your code goes here...
  search_result = HTTP.get('https://www.edamam.com/search?type=Feeds').to_s

  recipes = JSON.parse(search_result)

  puts recipes.first['items'].first['label']
  puts recipes.first['items'].first['url']
end
