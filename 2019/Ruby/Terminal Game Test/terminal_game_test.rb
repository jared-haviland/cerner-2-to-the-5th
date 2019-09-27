# cerner_2^5_2019
require 'io/console'

class Game
    def initialize
        @grid = [['X', '.', '.', '.', '.', '.'], ['.', '.', '.', '.', '.', '.'], ['.', '.', '.', '.', '.', '.'], ['.', '.', '.', '.', '.', '.'], ['.', '.', '.', '.', '.', '.'], ['.', '.', '.', '.', '.', '.']]
        @player_x, @player_y = 0, 0
    end

    def print_grid
        system("clear") || system("cls")
        puts "Use 'wasd' to move or press 'q' to quit.\n\n"
        @grid.each { |row| puts row.join(" ") }
    end

    def move_player(key)
        @grid[@player_y][@player_x] = '.'
        (@player_y -= 1 unless @player_y == 0) if key == 'w'
        (@player_x -= 1 unless @player_x == 0) if key == 'a'
        (@player_y += 1 unless @player_y == @grid.length - 1) if key == 's'
        (@player_x += 1 unless @player_x == @grid.length - 1) if key == 'd'
        @grid[@player_y][@player_x] = 'X'
    end
end

game = Game.new
while(true) do
    game.print_grid
    input_key = STDIN.getch
    exit if input_key == 'q'
    game.move_player(input_key) if ['w', 'a', 's', 'd'].include? input_key
end