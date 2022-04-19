RSpec.describe 'test' do
  it 'test with "380\n"' do
    io = IO.popen("ruby joi2008yo/A.rb", "w+")
    io.puts("380\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "1\n"' do
    io = IO.popen("ruby joi2008yo/A.rb", "w+")
    io.puts("1\n")
    io.close_write
    expect(io.readlines.join).to eq("15\n")
  end

end
