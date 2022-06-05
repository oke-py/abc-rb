RSpec.describe 'test' do
  it 'test with "2020 2040\n"' do
    io = IO.popen("ruby abc133/C.rb", "w+")
    io.puts("2020 2040\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "4 5\n"' do
    io = IO.popen("ruby abc133/C.rb", "w+")
    io.puts("4 5\n")
    io.close_write
    expect(io.readlines.join).to eq("20\n")
  end

end
