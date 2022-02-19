RSpec.describe 'test' do
  it 'test with "2 3 3 4\n"' do
    io = IO.popen("ruby abc239/D.rb", "w+")
    io.puts("2 3 3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("Aoki\n")
  end

  it 'test with "1 100 50 60\n"' do
    io = IO.popen("ruby abc239/D.rb", "w+")
    io.puts("1 100 50 60\n")
    io.close_write
    expect(io.readlines.join).to eq("Takahashi\n")
  end

  it 'test with "3 14 1 5\n"' do
    io = IO.popen("ruby abc239/D.rb", "w+")
    io.puts("3 14 1 5\n")
    io.close_write
    expect(io.readlines.join).to eq("Aoki\n")
  end

end
