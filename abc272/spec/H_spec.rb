RSpec.describe 'test' do
  it 'test with "2\n0 1\n"' do
    io = IO.popen("ruby abc272/H.rb", "w+")
    io.puts("2\n0 1\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "4\n3 1 1 2\n"' do
    io = IO.popen("ruby abc272/H.rb", "w+")
    io.puts("4\n3 1 1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("665496237\n")
  end

end
