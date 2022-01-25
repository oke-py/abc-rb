RSpec.describe 'test' do
  it 'test with "3 2 2\n1 2\n1 0\n1 3\n2 0\n"' do
    io = IO.popen("ruby abc213/H.rb", "w+")
    io.puts("3 2 2\n1 2\n1 0\n1 3\n2 0\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "3 3 4\n1 2\n3 0 0 0\n1 3\n0 1 0 0\n2 3\n2 0 0 0\n"' do
    io = IO.popen("ruby abc213/H.rb", "w+")
    io.puts("3 3 4\n1 2\n3 0 0 0\n1 3\n0 1 0 0\n2 3\n2 0 0 0\n")
    io.close_write
    expect(io.readlines.join).to eq("130\n")
  end

  it 'test with "2 1 5\n1 2\n31415 92653 58979 32384 62643\n"' do
    io = IO.popen("ruby abc213/H.rb", "w+")
    io.puts("2 1 5\n1 2\n31415 92653 58979 32384 62643\n")
    io.close_write
    expect(io.readlines.join).to eq("844557977\n")
  end

end
