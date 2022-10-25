RSpec.describe 'test' do
  it 'test with "3 3\n2 1 2\n2 2 3\n2 1 3\n"' do
    io = IO.popen("ruby abc272/B.rb", "w+")
    io.puts("3 3\n2 1 2\n2 2 3\n2 1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "4 2\n3 1 2 4\n3 2 3 4\n"' do
    io = IO.popen("ruby abc272/B.rb", "w+")
    io.puts("4 2\n3 1 2 4\n3 2 3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

end
