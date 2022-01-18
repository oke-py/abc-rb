RSpec.describe 'test' do
  it 'test with "3\n1 2 1\n"' do
    io = IO.popen("ruby abc221/E.rb", "w+")
    io.puts("3\n1 2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "3\n1 2 2\n"' do
    io = IO.popen("ruby abc221/E.rb", "w+")
    io.puts("3\n1 2 2\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "3\n3 2 1\n"' do
    io = IO.popen("ruby abc221/E.rb", "w+")
    io.puts("3\n3 2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "10\n198495780 28463047 859606611 212983738 946249513 789612890 782044670 700201033 367981604 302538501\n"' do
    io = IO.popen("ruby abc221/E.rb", "w+")
    io.puts("10\n198495780 28463047 859606611 212983738 946249513 789612890 782044670 700201033 367981604 302538501\n")
    io.close_write
    expect(io.readlines.join).to eq("830\n")
  end

end
