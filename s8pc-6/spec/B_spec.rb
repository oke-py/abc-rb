RSpec.describe 'test' do
  it 'test with "3\n5 7\n2 6\n8 10\n"' do
    io = IO.popen("ruby s8pc-6/B.rb", "w+")
    io.puts("3\n5 7\n2 6\n8 10\n")
    io.close_write
    expect(io.readlines.join).to eq("18\n")
  end

  it 'test with "5\n1 71\n43 64\n13 35\n14 54\n79 85\n"' do
    io = IO.popen("ruby s8pc-6/B.rb", "w+")
    io.puts("5\n1 71\n43 64\n13 35\n14 54\n79 85\n")
    io.close_write
    expect(io.readlines.join).to eq("334\n")
  end

  it 'test with "11\n15004200 341668840\n277786703 825590503\n85505967 410375631\n797368845 930277710\n90107929 763195990\n104844373 888031128\n338351523 715240891\n458782074 493862093\n189601059 534714600\n299073643 971113974\n98291394 443377420\n"' do
    io = IO.popen("ruby s8pc-6/B.rb", "w+")
    io.puts("11\n15004200 341668840\n277786703 825590503\n85505967 410375631\n797368845 930277710\n90107929 763195990\n104844373 888031128\n338351523 715240891\n458782074 493862093\n189601059 534714600\n299073643 971113974\n98291394 443377420\n")
    io.close_write
    expect(io.readlines.join).to eq("8494550716\n")
  end

  it 'test with "4\n10 100\n15 100\n20 100\n40 100\n"' do
    io = IO.popen("ruby s8pc-6/B.rb", "w+")
    io.puts("4\n10 100\n15 100\n20 100\n40 100\n")
    io.close_write
    expect(io.readlines.join).to eq("350\n")
  end
end
