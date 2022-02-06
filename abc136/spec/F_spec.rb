RSpec.describe 'test' do
  it 'test with "3\n-1 3\n2 1\n3 -2\n"' do
    io = IO.popen("ruby abc136/F.rb", "w+")
    io.puts("3\n-1 3\n2 1\n3 -2\n")
    io.close_write
    expect(io.readlines.join).to eq("13\n")
  end

  it 'test with "4\n1 4\n2 1\n3 3\n4 2\n"' do
    io = IO.popen("ruby abc136/F.rb", "w+")
    io.puts("4\n1 4\n2 1\n3 3\n4 2\n")
    io.close_write
    expect(io.readlines.join).to eq("34\n")
  end

  it 'test with "10\n19 -11\n-3 -12\n5 3\n3 -15\n8 -14\n-9 -20\n10 -9\n0 2\n-7 17\n6 -6\n"' do
    io = IO.popen("ruby abc136/F.rb", "w+")
    io.puts("10\n19 -11\n-3 -12\n5 3\n3 -15\n8 -14\n-9 -20\n10 -9\n0 2\n-7 17\n6 -6\n")
    io.close_write
    expect(io.readlines.join).to eq("7222\n")
  end

end
