require 'bundler'
Bundler.require


$:.unshift File.expand_path("./../lib", __FILE__)
require'game'
require'player'
require'board'
require'board_cells'

Game.new.perform