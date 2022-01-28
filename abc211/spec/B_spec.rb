RSpec.describe 'test' do
  it 'test with "3B\nHR\n2B\nH\n"' do
    io = IO.popen("ruby abc211/B.rb", "w+")
    io.puts("3B\nHR\n2B\nH\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "2B\n3B\nHR\n3B\n"' do
    io = IO.popen("ruby abc211/B.rb", "w+")
    io.puts("2B\n3B\nHR\n3B\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

end
