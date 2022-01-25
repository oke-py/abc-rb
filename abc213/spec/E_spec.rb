RSpec.describe 'test' do
  it 'test with "5 5\n..#..\n#.#.#\n##.##\n#.#.#\n..#..\n"' do
    io = IO.popen("ruby abc213/E.rb", "w+")
    io.puts("5 5\n..#..\n#.#.#\n##.##\n#.#.#\n..#..\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "..#..\n#.**#\n##**#\n#.#.#\n..#.."' do
    io = IO.popen("ruby abc213/E.rb", "w+")
    io.puts("..#..\n#.**#\n##**#\n#.#.#\n..#..")
    io.close_write
    expect(io.readlines.join).to eq("5 7\n.......\n######.\n.......\n.######\n.......\n")
  end

  it 'test with "0\n"' do
    io = IO.popen("ruby abc213/E.rb", "w+")
    io.puts("0\n")
    io.close_write
    expect(io.readlines.join).to eq("8 8\n.#######\n########\n########\n########\n########\n########\n########\n#######.\n")
  end

  it 'test with "5\n"' do
    io = IO.popen("ruby abc213/E.rb", "w+")
    io.puts("5\n")
    io.close_write
    expect(io.readlines.join).to eq()
  end

end
