RSpec.describe 'test' do
  it 'test with "130 100\n"' do
    io = IO.popen("ruby abc211/A.rb", "w+")
    io.puts("130 100\n")
    io.close_write
    expect(io.readlines.join).to eq("110\n")
  end

  it 'test with "300 50\n"' do
    io = IO.popen("ruby abc211/A.rb", "w+")
    io.puts("300 50\n")
    io.close_write
    expect(io.readlines.join).to eq("133.3333333\n")
  end

  it 'test with "123 123\n"' do
    io = IO.popen("ruby abc211/A.rb", "w+")
    io.puts("123 123\n")
    io.close_write
    expect(io.readlines.join).to eq("123\n")
  end

end
