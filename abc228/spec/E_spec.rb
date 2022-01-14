RSpec.describe 'test' do
  it 'test with "2 2 2\n"' do
    io = IO.popen("ruby abc228/E.rb", "w+")
    io.puts("2 2 2\n")
    io.close_write
    expect(io.readlines.join).to eq("16\n")
  end

  it 'test with "3 14 15926535\n"' do
    io = IO.popen("ruby abc228/E.rb", "w+")
    io.puts("3 14 15926535\n")
    io.close_write
    expect(io.readlines.join).to eq("109718301\n")
  end

end
