require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'router'
require 'controller'
require 'gossip'
#require 'app/game'



Router.new.perform #### pourquoi perform pas de nom 
  
binding.pry