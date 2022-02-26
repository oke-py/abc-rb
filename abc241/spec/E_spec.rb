RSpec.describe 'test' do
  it 'test with "5 3\n2 1 6 3 1\n"' do
    io = IO.popen("ruby abc241/E.rb", "w+")
    io.puts("5 3\n2 1 6 3 1\n")
    io.close_write
    expect(io.readlines.join).to eq("11\n")
  end

  it 'test with "10 1000000000000\n260522 914575 436426 979445 648772 690081 933447 190629 703497 47202\n"' do
    io = IO.popen("ruby abc241/E.rb", "w+")
    io.puts("10 1000000000000\n260522 914575 436426 979445 648772 690081 933447 190629 703497 47202\n")
    io.close_write
    expect(io.readlines.join).to eq("826617499998784056\n")
  end

end
