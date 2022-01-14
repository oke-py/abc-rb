RSpec.describe 'test' do
  it 'test with "3 5\n3 1\n4 2\n2 3\n"' do
    io = IO.popen("ruby abc229/C.rb", "w+")
    io.puts("3 5\n3 1\n4 2\n2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("15\n")
  end

  it 'test with "4 100\n6 2\n1 5\n3 9\n8 7\n"' do
    io = IO.popen("ruby abc229/C.rb", "w+")
    io.puts("4 100\n6 2\n1 5\n3 9\n8 7\n")
    io.close_write
    expect(io.readlines.join).to eq("100\n")
  end

  it 'test with "10 3141\n314944731 649\n140276783 228\n578012421 809\n878510647 519\n925326537 943\n337666726 611\n879137070 306\n87808915 39\n756059990 244\n228622672 291\n"' do
    io = IO.popen("ruby abc229/C.rb", "w+")
    io.puts("10 3141\n314944731 649\n140276783 228\n578012421 809\n878510647 519\n925326537 943\n337666726 611\n879137070 306\n87808915 39\n756059990 244\n228622672 291\n")
    io.close_write
    expect(io.readlines.join).to eq("2357689932073\n")
  end

end
