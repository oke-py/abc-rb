RSpec.describe 'test' do
  it 'test with "8\n........\n........\n.#.##.#.\n........\n........\n........\n........\n........\n"' do
    io = IO.popen("ruby abc241/C.rb", "w+")
    io.puts("8\n........\n........\n.#.##.#.\n........\n........\n........\n........\n........\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "6\n######\n######\n######\n######\n######\n######\n"' do
    io = IO.popen("ruby abc241/C.rb", "w+")
    io.puts("6\n######\n######\n######\n######\n######\n######\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "6\n...#..\n...#..\n...#..\n...#..\n...#..\n...#..\n"' do
    io = IO.popen("ruby abc241/C.rb", "w+")
    io.puts("6\n...#..\n...#..\n...#..\n...#..\n...#..\n...#..\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "6\n#.....\n.#....\n..#...\n...#..\n....#.\n.....#\n"' do
    io = IO.popen("ruby abc241/C.rb", "w+")
    io.puts("6\n...#..\n...#..\n...#..\n...#..\n...#..\n...#..\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "6\n.....#\n....#.\n...#..\n..#...\n.#....\n#.....\n"' do
    io = IO.popen("ruby abc241/C.rb", "w+")
    io.puts("6\n.....#\n....#.\n...#..\n..#...\n.#....\n#.....\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "10\n..........\n#..##.....\n..........\n..........\n....#.....\n....#.....\n.#...#..#.\n..........\n..........\n..........\n"' do
    io = IO.popen("ruby abc241/C.rb", "w+")
    io.puts("10\n..........\n#..##.....\n..........\n..........\n....#.....\n....#.....\n.#...#..#.\n..........\n..........\n..........\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

end
