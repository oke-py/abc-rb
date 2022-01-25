RSpec.describe 'test' do
  it 'test with "2\n3 1\n1 2\n"' do
    io = IO.popen("ruby abc216/F.rb", "w+")
    io.puts("2\n3 1\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "2\n1 1\n2 2\n"' do
    io = IO.popen("ruby abc216/F.rb", "w+")
    io.puts("2\n1 1\n2 2\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "20\n1937 3980 2689 1208 3640 1979 581 2271 4229 3948 3708 1522 4161 4661 3797 96 3388 3395 2920 2247\n4485 2580 174 1156 3770 3396 3558 3500 3494 479 269 3383 1230 1711 3545 3919 134 475 3796 1017\n"' do
    io = IO.popen("ruby abc216/F.rb", "w+")
    io.puts("20\n1937 3980 2689 1208 3640 1979 581 2271 4229 3948 3708 1522 4161 4661 3797 96 3388 3395 2920 2247\n4485 2580 174 1156 3770 3396 3558 3500 3494 479 269 3383 1230 1711 3545 3919 134 475 3796 1017\n")
    io.close_write
    expect(io.readlines.join).to eq("476\n")
  end

end
