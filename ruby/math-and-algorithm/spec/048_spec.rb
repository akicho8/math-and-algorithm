RSpec.describe 'test' do
  it 'test with "10\n"' do
    IO.popen("ruby #{__dir__}/../048.rb", "w+") do |io|
      io.puts("10\n")
      io.close_write
      expect(io.readlines.join).to eq("149\n")
    end
  end

  it 'test with "876543210987654321\n"' do
    IO.popen("ruby #{__dir__}/../048.rb", "w+") do |io|
      io.puts("876543210987654321\n")
      io.close_write
      expect(io.readlines.join).to eq("639479200\n")
    end
  end

end
