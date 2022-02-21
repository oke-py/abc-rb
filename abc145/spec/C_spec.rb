RSpec.describe 'test' do
  it 'test with "3\n0 0\n1 0\n0 1\n"' do
    io = IO.popen("ruby abc145/C.rb", "w+")
    io.puts("3\n0 0\n1 0\n0 1\n")
    io.close_write
    expect(io.readlines.join).to eq("2.2761423749\n")
  end

  it 'test with "2\n-879 981\n-866 890\n"' do
    io = IO.popen("ruby abc145/C.rb", "w+")
    io.puts("2\n-879 981\n-866 890\n")
    io.close_write
    expect(io.readlines.join).to eq("91.9238815543\n")
  end

  it 'test with "8\n-406 10\n512 859\n494 362\n-955 -475\n128 553\n-986 -885\n763 77\n449 310\n"' do
    io = IO.popen("ruby abc145/C.rb", "w+")
    io.puts("8\n-406 10\n512 859\n494 362\n-955 -475\n128 553\n-986 -885\n763 77\n449 310\n")
    io.close_write
    expect(io.readlines.join).to eq("7641.9817824387\n")
  end

end
