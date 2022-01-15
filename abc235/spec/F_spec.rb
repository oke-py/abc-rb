RSpec.describe 'test' do
  it 'test with "104\n2\n0 1\n"' do
    io = IO.popen("ruby abc235/F.rb", "w+")
    io.puts("104\n2\n0 1\n")
    io.close_write
    expect(io.readlines.join).to eq("520\n")
  end

  it 'test with "999\n4\n1 2 3 4\n"' do
    io = IO.popen("ruby abc235/F.rb", "w+")
    io.puts("999\n4\n1 2 3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890\n5\n0 2 4 6 8\n"' do
    io = IO.popen("ruby abc235/F.rb", "w+")
    io.puts("1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890\n5\n0 2 4 6 8\n")
    io.close_write
    expect(io.readlines.join).to eq("397365274\n")
  end

end
