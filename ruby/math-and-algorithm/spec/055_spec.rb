RSpec.describe 'test' do
  it 'test with "3 3\n2 0 1\n"' do
    IO.popen("ruby #{__dir__}/../055.rb", "w+") do |io|
      io.puts("3 3\n2 0 1\n")
      io.close_write
      expect(io.readlines.join).to eq("Yes\n")
    end
  end

  it 'test with "5 2\n1 0 0 0 0\n"' do
    IO.popen("ruby #{__dir__}/../055.rb", "w+") do |io|
      io.puts("5 2\n1 0 0 0 0\n")
      io.close_write
      expect(io.readlines.join).to eq("No\n")
    end
  end

end
