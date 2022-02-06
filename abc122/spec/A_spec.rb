RSpec.describe 'test' do
  it 'test with "A\n"' do
    io = IO.popen("ruby abc122/A.rb", "w+")
    io.puts("A\n")
    io.close_write
    expect(io.readlines.join).to eq("T\n")
  end

  it 'test with "G\n"' do
    io = IO.popen("ruby abc122/A.rb", "w+")
    io.puts("G\n")
    io.close_write
    expect(io.readlines.join).to eq("C\n")
  end

end
