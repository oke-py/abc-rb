RSpec.describe 'test' do
  it 'test with "KEY\n1\n"' do
    io = IO.popen("ruby abc227/E.rb", "w+")
    io.puts("KEY\n1\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "KKEE\n2\n"' do
    io = IO.popen("ruby abc227/E.rb", "w+")
    io.puts("KKEE\n2\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "KKEEYY\n1000000000\n"' do
    io = IO.popen("ruby abc227/E.rb", "w+")
    io.puts("KKEEYY\n1000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("90\n")
  end

end
