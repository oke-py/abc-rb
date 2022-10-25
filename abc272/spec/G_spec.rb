RSpec.describe 'test' do
  it 'test with "5\n3 17 8 14 10\n"' do
    io = IO.popen("ruby abc272/G.rb", "w+")
    io.puts("5\n3 17 8 14 10\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n")
  end

  it 'test with "10\n822848257 553915718 220834133 692082894 567771297 176423255 25919724 849988238 85134228 235637759\n"' do
    io = IO.popen("ruby abc272/G.rb", "w+")
    io.puts("10\n822848257 553915718 220834133 692082894 567771297 176423255 25919724 849988238 85134228 235637759\n")
    io.close_write
    expect(io.readlines.join).to eq("37\n")
  end

  it 'test with "10\n1 2 3 4 5 6 7 8 9 10\n"' do
    io = IO.popen("ruby abc272/G.rb", "w+")
    io.puts("10\n1 2 3 4 5 6 7 8 9 10\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

end
