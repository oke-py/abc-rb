RSpec.describe 'test' do
  it 'test with "3\n10 20 39\n"' do
    io = IO.popen("ruby abc227/B.rb", "w+")
    io.puts("3\n10 20 39\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "5\n666 777 888 777 666\n"' do
    io = IO.popen("ruby abc227/B.rb", "w+")
    io.puts("5\n666 777 888 777 666\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

end
