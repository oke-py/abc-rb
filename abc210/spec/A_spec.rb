RSpec.describe 'test' do
  it 'test with "5 3 20 15\n"' do
    io = IO.popen("ruby abc210/A.rb", "w+")
    io.puts("5 3 20 15\n")
    io.close_write
    expect(io.readlines.join).to eq("90\n")
  end

  it 'test with "10 10 100 1\n"' do
    io = IO.popen("ruby abc210/A.rb", "w+")
    io.puts("10 10 100 1\n")
    io.close_write
    expect(io.readlines.join).to eq("1000\n")
  end

end
