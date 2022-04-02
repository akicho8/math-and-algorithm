RSpec.describe 'test' do
  it 'test with "5 23\n"' do
    IO.popen("ruby #{__dir__}/../043.rb", "w+") do |io|
      io.puts("5 23\n")
      io.close_write
      expect(io.readlines.join).to eq("871631629\n")
    end
  end

  it 'test with "97 998244353\n"' do
    IO.popen("ruby #{__dir__}/../043.rb", "w+") do |io|
      io.puts("97 998244353\n")
      io.close_write
      expect(io.readlines.join).to eq("934801994\n")
    end
  end

end
