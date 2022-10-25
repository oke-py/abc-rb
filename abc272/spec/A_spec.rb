RSpec.describe 'test' do
  it 'test with "3\n2 7 2\n"' do
    io = IO.popen("ruby abc272/A.rb", "w+")
    io.puts("3\n2 7 2\n")
    io.close_write
    expect(io.readlines.join).to eq("11\n")
  end

  it 'test with "1\n3\n"' do
    io = IO.popen("ruby abc272/A.rb", "w+")
    io.puts("1\n3\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

end
