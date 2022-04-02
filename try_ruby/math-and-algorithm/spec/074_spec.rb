RSpec.describe 'test' do
  it 'test with "5\n0.10 0.20 0.30 2\n0.02 0.03 0.01 3\n0.50 0.00 0.00 16\n0.20 0.70 0.60 12345\n1.00 1.00 1.00 10000000\n"' do
    io = IO.popen("ruby math-and-algorithm/074.rb", "w+")
    io.puts("5\n0.10 0.20 0.30 2\n0.02 0.03 0.01 3\n0.50 0.00 0.00 16\n0.20 0.70 0.60 12345\n1.00 1.00 1.00 10000000\n")
    io.close_write
    expect(io.readlines.join).to eq("1.210000000000000 1.120000000000000 0.670000000000000\n1.027637000000000 0.942080000000000 1.030283000000000\n0.000015258789062 1.000000000000000 1.999984741210938\n1.852941176470589 0.529411764705882 0.617647058823530\n1.000000000000000 1.000000000000000 1.000000000000000\n")
  end

end
