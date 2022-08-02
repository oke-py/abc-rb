RSpec.describe 'test' do
  it 'test with "atcoderregularcontest\n"' do
    io = IO.popen("ruby abc071/B.rb", "w+")
    io.puts("atcoderregularcontest\n")
    io.close_write
    expect(io.readlines.join).to eq("b\n")
  end

  it 'test with "abcdefghijklmnopqrstuvwxyz\n"' do
    io = IO.popen("ruby abc071/B.rb", "w+")
    io.puts("abcdefghijklmnopqrstuvwxyz\n")
    io.close_write
    expect(io.readlines.join).to eq("None\n")
  end

  it 'test with "fajsonlslfepbjtsaayxbymeskptcumtwrmkkinjxnnucagfrg\n"' do
    io = IO.popen("ruby abc071/B.rb", "w+")
    io.puts("fajsonlslfepbjtsaayxbymeskptcumtwrmkkinjxnnucagfrg\n")
    io.close_write
    expect(io.readlines.join).to eq("d\n")
  end

end
