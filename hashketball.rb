# Write your code here!
require "pry" 

def game_hash 
  game_hash = {
    :home => {
      :team_name => "Brooklyn Nets", 
      :colors => ["Black", "White"], 
      :players => {
        "Alan Anderson" => 
        {:number => 0, 
        :shoe => 16, 
        :points => 22, 
        :rebounds => 12, 
        :assists => 12, 
        :steals => 3, 
        :blocks => 1, 
        :slam_dunks => 1}, 
        "Reggie Evans" =>
        {:number => 30, 
        :shoe => 14, 
        :points => 12, 
        :rebounds => 12, 
        :assists => 12, 
        :steals => 12, 
        :blocks => 12, 
        :slam_dunks => 7}, 
        "Brook Lopez" => 
        {:number => 11, 
        :shoe => 17, 
        :points => 17, 
        :rebounds => 19, 
        :assists => 10, 
        :steals => 3, 
        :blocks => 1, 
        :slam_dunks => 15},
        "Mason Plumlee" =>
        {:number => 1, 
        :shoe => 19, 
        :points => 26, 
        :rebounds => 12, 
        :assists => 6, 
        :steals => 3, 
        :blocks => 8, 
        :slam_dunks => 5},
        "Jason Terry" => 
        {:number => 31, 
        :shoe => 15, 
        :points => 19, 
        :rebounds => 2, 
        :assists => 2, 
        :steals => 4, 
        :blocks => 11, 
        :slam_dunks => 1 },
      }
      },
    :away => {
      :team_name => "Charlotte Hornets", 
      :colors => ["Turquoise", "Purple"], 
      :players => {
        "Jeff Adrien" => 
        {:number => 4, 
        :shoe => 18, 
        :points => 10, 
        :rebounds => 1, 
        :assists => 1, 
        :steals => 2, 
        :blocks => 7, 
        :slam_dunks => 2}, 
        "Bismak Biyombo" =>
        {:number => 0, 
        :shoe => 16, 
        :points => 12, 
        :rebounds => 4, 
        :assists => 7, 
        :steals => 7, 
        :blocks => 15, 
        :slam_dunks => 10}, 
        "DeSagna Diop" => 
        {:number => 2, 
        :shoe => 14, 
        :points => 24, 
        :rebounds => 12, 
        :assists => 12, 
        :steals => 4, 
        :blocks => 5, 
        :slam_dunks => 5},
        "Ben Gordon" =>
        {:number => 8, 
        :shoe => 15, 
        :points => 33, 
        :rebounds => 3, 
        :assists => 2, 
        :steals => 1, 
        :blocks => 1, 
        :slam_dunks => 0},
        "Brendan Haywood" => 
        {:number => 33, 
        :shoe => 15, 
        :points => 6, 
        :rebounds => 12, 
        :assists => 12, 
        :steals => 22, 
        :blocks => 5, 
        :slam_dunks => 12},
      }
    }
  }
end 

def num_points_scored(player_name)
  game_hash
  points = ""
  game_hash.each do |homeaway, info|
    info.each do |teaminfo, data|
      if teaminfo == :players
        data.each do |player, stats|
          if player == player_name
            points = stats[:points]
          end 
        end 
      end 
    end 
  end 
  points.to_i
end 

def shoe_size(player_name)
  game_hash
  shoe_size = ""
  game_hash.each do |homeaway,info|
    info.each do |teaminfo, data|
      if teaminfo == :players
        data.each do |player, stats|
          if player == player_name
            shoe_size = stats[:shoe]
          end 
        end 
      end 
    end 
  end 
  shoe_size.to_i
end 

def team_colors(team)
  game_hash
  colors = ""
  game_hash.each do |homeaway,info|
    info.each do |teaminfo, data|
      if data == team
        colors = info[:colors]
      end 
    end 
  end
  colors
end 

def team_names
  game_hash
  team_names_array = Array.new
  game_hash.each do |homeaway,info|
    info.each do |teaminfo, data|
      if teaminfo == :team_name
        team_names_array.push(info[:team_name])
      end 
    end 
  end 
  team_names_array
end 

def player_numbers(team_name)
  game_hash
  jersey_numbers = Array.new  
  game_hash.each do |homeaway, info|
    info.each do |teaminfo, data|
      if data == team_name
        info[:players].each do |players,stats|
          jersey_numbers.push(stats[:number].to_i)
        end 
      end 
    end 
  end 
  jersey_numbers
end 
    
def player_stats(player)
  game_hash
  stats_hash = {}
  game_hash.each do |homeaway,info|
    info.each do |teaminfo,data|
      if teaminfo == :players
        data.each do |players,stats|
          if players == player
            stats_hash = stats
          end 
        end 
      end 
    end 
  end
  stats_hash
end 

def big_shoe_rebounds
  game_hash
  rebounds = 0
  max = 0 
  game_hash.each do |homeaway,info|
    info.each do |teaminfo,data|
      if teaminfo == :players
        data.each do |player, stats|
          if stats[:shoe].to_i > max
            max = stats[:shoe].to_i
            rebounds = stats[:rebounds].to_i
          end 
        end 
      end 
    end 
  end 
  rebounds
end 






