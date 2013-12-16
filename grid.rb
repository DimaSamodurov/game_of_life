class Grid < Array

  # Returns state of a cell in the grid (1 - alive, 0 - dead).
  # Returns 0 (dead) if coordinates are out of bounds.
  def state_at(i, j)
    return 0 if i < 0 || j < 0
    (self[i] || [])[j].to_i
  end

  def alive_neighbour_count(i, j)
    [[i-1, j-1], [i-1, j], [i-1, j+1],[i, j-1], [i, j+1],[i+1, j-1], [i+1, j], [i+1, j+1]].inject(0) do |result, (i, j)|
      result + state_at(i, j)
    end
  end

  # Returns next state of a cell based on rules of the game.
  def next_state(i, j)
    cnt = alive_neighbour_count(i, j)
    return 0 if  cnt < 2 || cnt > 3
    return 1 if cnt == 3
    return self[i][j].to_i
  end

  def tik
    grid = Grid.new(self.size).tap{|grid| grid.each_index{|i| grid[i] = Array.new self.size}}
    self.each_with_index do |row, i|
      row.each_index {|j| grid[i][j] = next_state(i, j)}
    end
    grid
  end

end