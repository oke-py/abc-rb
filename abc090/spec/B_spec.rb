RSpec.describe 'test' do
  it 'test with "11009 11332\n"' do
    io = IO.popen("ruby abc090/B.rb", "w+")
    io.puts("11009 11332\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "31415 92653\n"' do
    io = IO.popen("ruby abc090/B.rb", "w+")
    io.puts("31415 92653\n")
    io.close_write
    expect(io.readlines.join).to eq("612\n")
  end

end
