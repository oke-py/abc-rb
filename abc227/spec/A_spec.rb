RSpec.describe 'test' do
  it 'test with "3 3 2\n"' do
    io = IO.popen("ruby abc227/A.rb", "w+")
    io.puts("3 3 2\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "1 100 1\n"' do
    io = IO.popen("ruby abc227/A.rb", "w+")
    io.puts("1 100 1\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "3 14 2\n"' do
    io = IO.popen("ruby abc227/A.rb", "w+")
    io.puts("3 14 2\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

end
