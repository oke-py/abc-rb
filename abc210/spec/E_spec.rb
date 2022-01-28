RSpec.describe 'test' do
  it 'test with "4 2\n2 3\n3 5\n"' do
    io = IO.popen("ruby abc210/E.rb", "w+")
    io.puts("4 2\n2 3\n3 5\n")
    io.close_write
    expect(io.readlines.join).to eq("11\n")
  end

  it 'test with "6 1\n3 4\n"' do
    io = IO.popen("ruby abc210/E.rb", "w+")
    io.puts("6 1\n3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

end
