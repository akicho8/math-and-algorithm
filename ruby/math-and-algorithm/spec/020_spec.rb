RSpec.describe 'test' do
  it 'test with "5\n100 150 200 250 300\n"' do
    IO.popen("ruby #{__dir__}/../020.rb", "w+") do |io|
      io.puts("5\n100 150 200 250 300\n")
      io.close_write
      expect(io.readlines.join).to eq("1\n")
    end
  end

  it 'test with "13\n243 156 104 280 142 286 196 132 128 195 265 300 130\n"' do
    IO.popen("ruby #{__dir__}/../020.rb", "w+") do |io|
      io.puts("13\n243 156 104 280 142 286 196 132 128 195 265 300 130\n")
      io.close_write
      expect(io.readlines.join).to eq("4\n")
    end
  end

end
