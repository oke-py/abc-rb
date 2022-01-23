RSpec.describe 'test' do
  it 'test with "5 3\ntokyo kanda akiba okachi ueno\ntokyo akiba ueno\n"' do
    io = IO.popen("ruby abc236/C.rb", "w+")
    io.puts("5 3\ntokyo kanda akiba okachi ueno\ntokyo akiba ueno\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\nNo\nYes\nNo\nYes\n")
  end

  it 'test with "7 7\na t c o d e r\na t c o d e r\n"' do
    io = IO.popen("ruby abc236/C.rb", "w+")
    io.puts("7 7\na t c o d e r\na t c o d e r\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\nYes\nYes\nYes\nYes\nYes\nYes\n")
  end

end
