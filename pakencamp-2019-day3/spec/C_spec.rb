RSpec.describe 'test' do

  it 'test with "1 2\n80 84\n"' do
    io = IO.popen("ruby pakencamp-2019-day3/C.rb", "w+")
    io.puts("1 2\n80 84\n")
    io.close_write
    expect(io.readlines.join).to eq("84\n")
  end

  it 'test with "3 4\n37 29 70 41\n85 69 76 50\n53 10 95 100\n"' do
    io = IO.popen("ruby pakencamp-2019-day3/C.rb", "w+")
    io.puts("3 4\n37 29 70 41\n85 69 76 50\n53 10 95 100\nn")
    io.close_write
    expect(io.readlines.join).to eq("250\n")
  end

  it 'test with "8 2\n31000000 41000000\n59000000 26000000\n53000000 58000000\n97000000 93000000\n23000000 84000000\n62000000 64000000\n33000000 83000000\n27000000 95000000\n"' do
    io = IO.popen("ruby pakencamp-2019-day3/C.rb", "w+")
    io.puts("8 2\n31000000 41000000\n59000000 26000000\n53000000 58000000\n97000000 93000000\n23000000 84000000\n62000000 64000000\n33000000 83000000\n27000000 95000000\n")
    io.close_write
    expect(io.readlines.join).to eq("581000000\n")
  end

end
