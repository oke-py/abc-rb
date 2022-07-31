RSpec.describe 'test' do
  it 'test with "5 3\n1 2 3 4 5\n"' do
    io = IO.popen("ruby abc067/B.rb", "w+")
    io.puts("5 3\n1 2 3 4 5\n")
    io.close_write
    expect(io.readlines.join).to eq("12\n")
  end

  it 'test with "15 14\n50 26 27 21 41 7 42 35 7 5 5 36 39 1 45\n"' do
    io = IO.popen("ruby abc067/B.rb", "w+")
    io.puts("15 14\n50 26 27 21 41 7 42 35 7 5 5 36 39 1 45\n")
    io.close_write
    expect(io.readlines.join).to eq("386\n")
  end

end
