RSpec.describe 'test' do
  it 'test with "3 72\n"' do
    io = IO.popen("ruby abc235/D.rb", "w+")
    io.puts("3 72\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "2 5\n"' do
    io = IO.popen("ruby abc235/D.rb", "w+")
    io.puts("2 5\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

  it 'test with "2 611\n"' do
    io = IO.popen("ruby abc235/D.rb", "w+")
    io.puts("2 611\n")
    io.close_write
    expect(io.readlines.join).to eq("12\n")
  end

  it 'test with "2 767090\n"' do
    io = IO.popen("ruby abc235/D.rb", "w+")
    io.puts("2 767090\n")
    io.close_write
    expect(io.readlines.join).to eq("111\n")
  end

end
