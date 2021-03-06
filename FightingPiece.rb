#Class: FightingPiece, subclass off of the Piece class, for Pieces that have commands and stats
#Notes:
#

req_dir = __FILE__.split("/")[0..__FILE__.split("/").length()-2].join("/")
require "#{req_dir}/Piece"

class FightingPiece < Piece
    def initialize(name, hp, mp, stats, grid=nil, pos=nil)
        #Initialize method for class Fighting Piece
        #name: [string] name of the piece
        #hp: [int] Health Points
        #mp: [int] Magic/Mana Points
        #stats: [hash] STR, DEF, INT, LCK 
        super(name, grid, pos)
        @hp = hp; @mp = mp
        @stats = stats
        @type = "fighting piece"
    end

    def hit(pos, command)
        #Method to use a command (i.e. "Attack") on space
        #pos: [string] position in AN notation
        #command: [string] command to use on position
        @grid.pushCommand(self, pos, command)
    end
end 
