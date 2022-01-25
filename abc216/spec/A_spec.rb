RSpec.describe 'test' do
  it 'test with "15.8\n"' do
    io = IO.popen("ruby abc216/A.rb", "w+")
    io.puts("15.8\n")
    io.close_write
    expect(io.readlines.join).to eq("15+\n")
  end

  it 'test with "1.0\n"' do
    io = IO.popen("ruby abc216/A.rb", "w+")
    io.puts("1.0\n")
    io.close_write
    expect(io.readlines.join).to eq("1-\n")
  end

  it 'test with "12.5\n"' do
    io = IO.popen("ruby abc216/A.rb", "w+")
    io.puts("12.5\n")
    io.close_write
    expect(io.readlines.join).to eq("12\n")
  end

end
