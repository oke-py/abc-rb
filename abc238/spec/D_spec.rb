RSpec.describe 'test' do
  it 'test with "2\n1 8\n4 2\n"' do
    io = IO.popen("ruby abc238/D.rb", "w+")
    io.puts("2\n1 8\n4 2\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\nNo\n")
  end

  it 'test with "4\n201408139683277485 381410962404666524\n360288799186493714 788806911317182736\n18999951915747344 451273909320288229\n962424162689761932 1097438793187620758\n"' do
    io = IO.popen("ruby abc238/D.rb", "w+")
    io.puts("4\n201408139683277485 381410962404666524\n360288799186493714 788806911317182736\n18999951915747344 451273909320288229\n962424162689761932 1097438793187620758\n")
    io.close_write
    expect(io.readlines.join).to eq("No\nYes\nYes\nNo\n")
  end

end
