RSpec.describe 'test' do
  it 'test with "4\n1161\n1119\n7111\n1811\n"' do
    io = IO.popen("ruby abc258/B.rb", "w+")
    io.puts("4\n1161\n1119\n7111\n1811\n")
    io.close_write
    expect(io.readlines.join).to eq("9786\n")
  end

  it 'test with "10\n1111111111\n1111111111\n1111111111\n1111111111\n1111111111\n1111111111\n1111111111\n1111111111\n1111111111\n1111111111\n"' do
    io = IO.popen("ruby abc258/B.rb", "w+")
    io.puts("10\n1111111111\n1111111111\n1111111111\n1111111111\n1111111111\n1111111111\n1111111111\n1111111111\n1111111111\n1111111111\n")
    io.close_write
    expect(io.readlines.join).to eq("1111111111\n")
  end

end
