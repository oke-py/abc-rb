RSpec.describe 'test' do
  it 'test with "3\n1 1\n2 1\n1 2\n"' do
    io = IO.popen("ruby abc225/E.rb", "w+")
    io.puts("3\n1 1\n2 1\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "10\n414598724 87552841\n252911401 309688555\n623249116 421714323\n605059493 227199170\n410455266 373748111\n861647548 916369023\n527772558 682124751\n356101507 249887028\n292258775 110762985\n850583108 796044319\n"' do
    io = IO.popen("ruby abc225/E.rb", "w+")
    io.puts("10\n414598724 87552841\n252911401 309688555\n623249116 421714323\n605059493 227199170\n410455266 373748111\n861647548 916369023\n527772558 682124751\n356101507 249887028\n292258775 110762985\n850583108 796044319\n")
    io.close_write
    expect(io.readlines.join).to eq("10\n")
  end

end
