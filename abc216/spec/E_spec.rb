RSpec.describe 'test' do
  it 'test with "3 5\n100 50 102\n"' do
    io = IO.popen("ruby abc216/E.rb", "w+")
    io.puts("3 5\n100 50 102\n")
    io.close_write
    expect(io.readlines.join).to eq("502\n")
  end

  it 'test with "2 2021\n2 3\n"' do
    io = IO.popen("ruby abc216/E.rb", "w+")
    io.puts("2 2021\n2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("9\n")
  end

end
