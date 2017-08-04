class Board
  def self.empty_grid
    Array.new(9) do
      Array.new(9) { Tile.new(0) }
    end
  end

  def initialize(grid = self.empty_grid)
    @grid = grid
  end

  def self.from_file(filename)
    rows = File.readlines(filename).map(&:chomp)
    tiles = rows.map do |row|
      chars = row.split("")
      chars.map { |char| Tile.new(char) }

    end

    self.new(tiles)
  end

  
end
