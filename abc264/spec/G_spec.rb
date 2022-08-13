RSpec.describe 'test' do
  it 'test with "3\na -5\nab 10\nba -20\n"' do
    io = IO.popen("ruby abc264/G.rb", "w+")
    io.puts("3\na -5\nab 10\nba -20\n")
    io.close_write
    expect(io.readlines.join).to eq("Infinity\n")
  end

  it 'test with "28\na -5\nab 10\nba -20\nbb -20\nbc -20\nbd -20\nbe -20\nbf -20\nbg -20\nbh -20\nbi -20\nbj -20\nbk -20\nbl -20\nbm -20\nbn -20\nbo -20\nbp -20\nbq -20\nbr -20\nbs -20\nbt -20\nbu -20\nbv -20\nbw -20\nbx -20\nby -20\nbz -20\n"' do
    io = IO.popen("ruby abc264/G.rb", "w+")
    io.puts("28\na -5\nab 10\nba -20\nbb -20\nbc -20\nbd -20\nbe -20\nbf -20\nbg -20\nbh -20\nbi -20\nbj -20\nbk -20\nbl -20\nbm -20\nbn -20\nbo -20\nbp -20\nbq -20\nbr -20\nbs -20\nbt -20\nbu -20\nbv -20\nbw -20\nbx -20\nby -20\nbz -20\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "26\na -1\nb -1\nc -1\nd -1\ne -1\nf -1\ng -1\nh -1\ni -1\nj -1\nk -1\nl -1\nm -1\nn -1\no -1\np -1\nq -1\nr -1\ns -1\nt -1\nu -1\nv -1\nw -1\nx -1\ny -1\nz -1\n"' do
    io = IO.popen("ruby abc264/G.rb", "w+")
    io.puts("26\na -1\nb -1\nc -1\nd -1\ne -1\nf -1\ng -1\nh -1\ni -1\nj -1\nk -1\nl -1\nm -1\nn -1\no -1\np -1\nq -1\nr -1\ns -1\nt -1\nu -1\nv -1\nw -1\nx -1\ny -1\nz -1\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

end
