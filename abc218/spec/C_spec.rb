RSpec.describe 'test' do
  it 'test with "5\n.....\n..#..\n.###.\n.....\n.....\n.....\n.....\n....#\n...##\n....#\n"' do
    io = IO.popen("ruby abc218/C.rb", "w+")
    io.puts("5\n.....\n..#..\n.###.\n.....\n.....\n.....\n.....\n....#\n...##\n....#\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "5\n#####\n##..#\n#..##\n#####\n.....\n#####\n#..##\n##..#\n#####\n.....\n"' do
    io = IO.popen("ruby abc218/C.rb", "w+")
    io.puts("5\n#####\n##..#\n#..##\n#####\n.....\n#####\n#..##\n##..#\n#####\n.....\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "4\n#...\n..#.\n..#.\n....\n#...\n#...\n..#.\n....\n"' do
    io = IO.popen("ruby abc218/C.rb", "w+")
    io.puts("4\n#...\n..#.\n..#.\n....\n#...\n#...\n..#.\n....\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "4\n#...\n.##.\n..#.\n....\n##..\n#...\n..#.\n....\n"' do
    io = IO.popen("ruby abc218/C.rb", "w+")
    io.puts("4\n#...\n.##.\n..#.\n....\n##..\n#...\n..#.\n....\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

end
