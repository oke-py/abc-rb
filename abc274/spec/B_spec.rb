RSpec.describe 'test' do
  it 'test with "3 4\n#..#\n.#.#\n.#.#\n"' do
    io = IO.popen("ruby abc274/B.rb", "w+")
    io.puts("3 4\n#..#\n.#.#\n.#.#\n")
    io.close_write
    expect(io.readlines.join).to eq("1 2 0 3\n")
  end

  it 'test with "3 7\n.......\n.......\n.......\n"' do
    io = IO.popen("ruby abc274/B.rb", "w+")
    io.puts("3 7\n.......\n.......\n.......\n")
    io.close_write
    expect(io.readlines.join).to eq("0 0 0 0 0 0 0\n")
  end

  it 'test with "8 3\n.#.\n###\n.#.\n.#.\n.##\n..#\n##.\n.##\n"' do
    io = IO.popen("ruby abc274/B.rb", "w+")
    io.puts("8 3\n.#.\n###\n.#.\n.#.\n.##\n..#\n##.\n.##\n")
    io.close_write
    expect(io.readlines.join).to eq("2 7 4\n")
  end

  it 'test with "5 47\n.#..#..#####..#...#..#####..#...#...###...#####\n.#.#...#.......#.#...#......##..#..#...#..#....\n.##....#####....#....#####..#.#.#..#......#####\n.#.#...#........#....#......#..##..#...#..#....\n.#..#..#####....#....#####..#...#...###...#####\n"' do
    io = IO.popen("ruby abc274/B.rb", "w+")
    io.puts("5 47\n.#..#..#####..#...#..#####..#...#...###...#####\n.#.#...#.......#.#...#......##..#..#...#..#....\n.##....#####....#....#####..#.#.#..#......#####\n.#.#...#........#....#......#..##..#...#..#....\n.#..#..#####....#....#####..#...#...###...#####\n")
    io.close_write
    expect(io.readlines.join).to eq("0 5 1 2 2 0 0 5 3 3 3 3 0 0 1 1 3 1 1 0 0 5 3 3 3 3 0 0 5 1 1 1 5 0 0 3 2 2 2 2 0 0 5 3 3 3 3\n")
  end

end
