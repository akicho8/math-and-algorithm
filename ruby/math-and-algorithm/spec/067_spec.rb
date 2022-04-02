RSpec.describe 'test' do
  it 'test with "6 11 30\n"' do
    IO.popen("ruby #{__dir__}/../067.rb", "w+") do |io|
      io.puts("6 11 30\n")
      io.close_write
      expect(io.readlines.join).to eq("Yes\n")
    end
  end

  it 'test with "1 1000000000 1\n"' do
    IO.popen("ruby #{__dir__}/../067.rb", "w+") do |io|
      io.puts("1 1000000000 1\n")
      io.close_write
      expect(io.readlines.join).to eq("No\n")
    end
  end

end
