RSpec.describe 'test' do
  it 'test with "3 4\n"' do
    IO.popen("ruby #{__dir__}/../008.rb", "w+") do |io|
      io.puts("3 4\n")
      io.close_write
      expect(io.readlines.join).to eq("6\n")
    end
  end

  it 'test with "869 120\n"' do
    IO.popen("ruby #{__dir__}/../008.rb", "w+") do |io|
      io.puts("869 120\n")
      io.close_write
      expect(io.readlines.join).to eq("7140\n")
    end
  end

end
