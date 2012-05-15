# encoding: UTF-8
require 'sinatra/base'
class Site < Sinatra::Base
  set :root, Proc.new { File.join(File.dirname(__FILE__),'site' )}
  set :public_folder, Proc.new { File.join(File.dirname(__FILE__),'..', "public") }
  before '*' do
    @title = "Site"
  end
  get '/' do
    erb(:main)
  end

  post "/deathclaw" do
      """
      Name
      Deathclaw alpha male

      ID
      00167ec1

      Level
      25

      Experience points
      50

      Perception
      8

      Hit points
      750

      Damage Threshold
      15

      Damage Resistance
      0%


      Aggression
      Confidence
      Assistance

      Melee (300 Damage)
          dead 15% Deathclaw egg
          dead 35% Deathclaw hand

   """
  end
  
end


