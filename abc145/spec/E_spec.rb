RSpec.describe 'test' do
  it 'test with "2 60\n10 10\n100 100\n"' do
    io = IO.popen("ruby abc145/E.rb", "w+")
    io.puts("2 60\n10 10\n100 100\n")
    io.close_write
    expect(io.readlines.join).to eq("110\n")
  end

  it 'test with "3 60\n10 10\n10 20\n10 30\n"' do
    io = IO.popen("ruby abc145/E.rb", "w+")
    io.puts("3 60\n10 10\n10 20\n10 30\n")
    io.close_write
    expect(io.readlines.join).to eq("60\n")
  end

  it 'test with "3 60\n30 10\n30 20\n30 30\n"' do
    io = IO.popen("ruby abc145/E.rb", "w+")
    io.puts("3 60\n30 10\n30 20\n30 30\n")
    io.close_write
    expect(io.readlines.join).to eq("50\n")
  end

  it 'test with "10 100\n15 23\n20 18\n13 17\n24 12\n18 29\n19 27\n23 21\n18 20\n27 15\n22 25\n"' do
    io = IO.popen("ruby abc145/E.rb", "w+")
    io.puts("10 100\n15 23\n20 18\n13 17\n24 12\n18 29\n19 27\n23 21\n18 20\n27 15\n22 25\n")
    io.close_write
    expect(io.readlines.join).to eq("145\n")
  end

end
