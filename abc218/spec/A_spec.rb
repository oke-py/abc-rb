RSpec.describe 'test' do
  it 'test with "4\noooxoox\n"' do
    io = IO.popen("ruby abc218/A.rb", "w+")
    io.puts("4\noooxoox\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "7\nooooooo\n"' do
    io = IO.popen("ruby abc218/A.rb", "w+")
    io.puts("7\nooooooo\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

end
