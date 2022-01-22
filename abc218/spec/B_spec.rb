RSpec.describe 'test' do
  it 'test with "1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26\n"' do
    io = IO.popen("ruby abc218/B.rb", "w+")
    io.puts("1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26\n")
    io.close_write
    expect(io.readlines.join).to eq("abcdefghijklmnopqrstuvwxyz\n")
  end

  it 'test with "2 1 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26\n"' do
    io = IO.popen("ruby abc218/B.rb", "w+")
    io.puts("2 1 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26\n")
    io.close_write
    expect(io.readlines.join).to eq("bacdefghijklmnopqrstuvwxyz\n")
  end

  it 'test with "5 11 12 16 25 17 18 1 7 10 4 23 20 3 2 24 26 19 14 9 6 22 8 13 15 21\n"' do
    io = IO.popen("ruby abc218/B.rb", "w+")
    io.puts("5 11 12 16 25 17 18 1 7 10 4 23 20 3 2 24 26 19 14 9 6 22 8 13 15 21\n")
    io.close_write
    expect(io.readlines.join).to eq("eklpyqragjdwtcbxzsnifvhmou\n")
  end

end
