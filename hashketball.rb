# Write your code here!
def game_hash
    hash = {
        :home => { :team_name => "Brooklyn Nets",
            :colors => "Black White",
            :players => [
            "Alan Anderson" => {
                :number => 0,
                :shoe => 16,
                :points => 22,
                :rebounds => 12,
                :assists => 12,
                :steals => 3,
                :blocks => 1,
                :slam_dunks => 1
            },
            "Reggie Evans" => {
                :number => 30,
                :shoe => 14,
                :points => 12,
                :rebounds => 12,
                :assists => 12,
                :steals => 12,
                :blocks => 12,
                :slam_dunks => 7
            },
            "Brook Lopez" => {
                :number => 11,
                :shoe => 17,
                :points => 17,
                :rebounds => 19,
                :assists => 10,
                :steals => 3,
                :blocks => 1,
                :slam_dunks => 15
            },
            "Mason Plumlee"=> {
                :number => 1,
                :shoe => 19,
                :points => 26,
                :rebounds => 12,
                :assists => 6,
                :steals => 3,
                :blocks => 8,
                :slam_dunks => 5
            },
            "Jason Terry"=> {
                :number => 31,
                :shoe => 15,
                :points => 19,
                :rebounds => 2,
                :assists => 2,
                :steals => 4,
                :blocks => 11,
                :slam_dunks => 1
            }]
        },
        :away => { :team_name => "Charlotte Hornets",
            :colors => "Turquoise Purple",
            :players => [
            "Jeff Adrien" => {
                :number => 4,
                :shoe => 18,
                :points => 10,
                :rebounds => 1,
                :assists => 1,
                :steals => 2,
                :blocks => 7,
                :slam_dunks => 2
            },
            "Bismak Biyombo" => {
                :number => 0,
                :shoe => 16,
                :points => 12,
                :rebounds => 4,
                :assists => 7,
                :steals => 7,
                :blocks => 15,
                :slam_dunks => 10
            },
            "DeSagna Diop" => {
                :number => 2,
                :shoe => 14,
                :points => 24,
                :rebounds => 12,
                :assists => 12,
                :steals => 4,
                :blocks => 5,
                :slam_dunks => 5
            },
            "Ben Gordon" => {
                :number => 8,
                :shoe => 15,
                :points => 33,
                :rebounds => 3,
                :assists => 2,
                :steals => 1,
                :blocks => 1,
                :slam_dunks => 0
            },
            "Brendan Haywood" => {
                :number => 33,
                :shoe => 15,
                :points => 6,
                :rebounds => 12,
                :assists => 12,
                :steals => 22,
                :blocks => 5,
                :slam_dunks => 12
            }]
        },
    }
end


def  num_points_scored(player)
    hash = game_hash()
    hash.each do |k, v|
        v.each do |k2, v2|
            if k2 == :players
                v2.each do |i|
                    i.each do |k3, v3|
                        if k3 == player
                            v3.each do |k4, v4|
                                if k4 == :points
                                    return v4
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end


def  shoe_size(player)
    hash = game_hash()
    hash.each do |k, v|
        v.each do |k2, v2|
            if k2 == :players
                v2.each do |i|
                    i.each do |k3, v3|
                        if k3 == player
                            v3.each do |k4, v4|
                                if k4 == :shoe
                                    return v4
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end


def team_colors(team)
    hash = game_hash()
    hash.each do |k, v|
        if v.has_value?(team)
            v.each do |k2, v2|
                if k2 == :colors
                    return v2.split(" ")
                end
            end
        end
    end
end

def team_names
    hash = game_hash()
    array = []
    hash.each do |k, v|
        v.each do |k2, v2|
            if k2 == :team_name
                array << v2
            end
        end
    end
    array
end


def player_numbers(team)
    hash = game_hash()
    array = []
    hash.each do |k, v|
        if v.has_value?(team)
            v.each do |k2, v2|
                if k2 == :players
                    v2.each do |i|
                        i.each do |k3, v3|
                            v3.each do |k4, v4|
                                if k4 == :number
                                    array << v4
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    return array
end

def player_stats(player)
    hash = game_hash()
    hash.each do |k1, v1|
        v1.each do |k2, v2|
            if v2.class == Array
                v2.each do |i|
                    i.each do |k4, v4|
                        if k4 == player
                            return v4
                        end
                    end
                end
            end
        end
    end
end



def big_shoe
    hash = game_hash()
    h = []
    hash.each do |k, v|
        v.each do |k2, v2|
            if k2 == :team_name
                h << helper(v2)
            end
        end
    end
    h
end




def helper(team)
    hash = game_hash()
    hash_new = {}
    hash.each do |k, v|
        if v.has_value?(team)
            v.each do |k2, v2|
                if k2 == :players
                    v2.each do |i|
                        i.each do |k3, v3|
                            v3.each do |k4, v4|
                                if k4 == :shoe
                                    hash_new[k3] = v4
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    return hash_new.sort_by do |k, v|
        v
        end[-1][0]
    end
    
    def big_rebounds(player)
        hash = game_hash()
        r = 0
        hash.each do |k, v|
            v.each do |k2, v2|
                if k2 == :players
                    v2.each do |i|
                        i.each do |k3, v3|
                            if k3 == player
                                v3.each do |k4, v4|
                                    if k4 == :rebounds
                                        r = v4
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
        r
    end
    
    def big_shoe_rebounds
        h = big_shoe()
        r = []
        h.each do |i|
            r << big_rebounds(i)
        end
        r.sort!
        r[-1]
    end
