RSpec.describe 'test' do
  it 'test with "mari\nto\nzzo\n1321\n"' do
    io = IO.popen("ruby abc219/B.rb", "w+")
    io.puts("mari\nto\nzzo\n1321\n")
    io.close_write
    expect(io.readlines.join).to eq("marizzotomari\n")
  end

  it 'test with "abra\ncad\nabra\n123\n"' do
    io = IO.popen("ruby abc219/B.rb", "w+")
    io.puts("abra\ncad\nabra\n123\n")
    io.close_write
    expect(io.readlines.join).to eq("abracadabra\n")
  end

  it 'test with "a\nb\nc\n1\n"' do
    io = IO.popen("ruby abc219/B.rb", "w+")
    io.puts("a\nb\nc\n1\n")
    io.close_write
    expect(io.readlines.join).to eq("a\n")
  end

end
