RSpec.describe 'test' do
  it 'test with "4\n0 1\n2 0\n2 3\n3 1\n"' do
    IO.popen("ruby #{__dir__}/../032.rb", "w+") do |io|
      io.puts("4\n0 1\n2 0\n2 3\n3 1\n")
      io.close_write
      expect(io.readlines.join).to eq("1.4142135623730950488016887242\n")
    end
  end

end
