RSpec.describe 'test' do
  it 'test with "7 3\n1 2 1 2 3 3 1\n"' do
    io = IO.popen("ruby abc210/C.rb", "w+")
    io.puts("7 3\n1 2 1 2 3 3 1\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "5 5\n4 4 4 4 4\n"' do
    io = IO.popen("ruby abc210/C.rb", "w+")
    io.puts("5 5\n4 4 4 4 4\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "10 6\n304621362 506696497 304621362 506696497 834022578 304621362 414720753 304621362 304621362 414720753\n"' do
    io = IO.popen("ruby abc210/C.rb", "w+")
    io.puts("10 6\n304621362 506696497 304621362 506696497 834022578 304621362 414720753 304621362 304621362 414720753\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

end
