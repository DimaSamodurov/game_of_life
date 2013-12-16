require 'rspec'
require_relative 'grid'
require 'pry'


describe '#next_state' do
  subject(:grid) {
    Grid.new([[0, 1, 0],
              [0, 1, 0],
              [0, 1, 0]]
    )
  }

  it { grid.next_state(0, 0).should == 0 } #
  it { grid.next_state(1, 1).should == 1 }
  it { grid.next_state(2, 2).should == 0 } #
  it { grid.next_state(0, 1).should == 0 }


  it { grid.next_state(1, 0).should == 1 }
  it { grid.next_state(1, 2).should == 1 }


end

describe '#tik' do

  it 'should conform flip pattern' do
    grid=Grid.new([[0, 1, 0],
                   [0, 1, 0],
                   [0, 1, 0]]
    )
    grid1=Grid.new([[0, 0, 0],
                    [1, 1, 1],
                    [0, 0, 0]]
    )

    grid.tik.should==grid1
  end
end

describe 'still pattern' do
  grid=Grid.new([[0, 1, 1, 0],
                 [1, 0, 0, 1],
                 [0, 1, 1, 0]]
  )
  grid1=Grid.new([[0, 1, 1, 0],
                  [1, 0, 0, 1],
                  [0, 1, 1, 0]]
  )

  grid.tik.should==grid1
end