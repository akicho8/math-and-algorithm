RSpec.describe 'test' do
  it 'test with "2\n"' do
    IO.popen("ruby #{__dir__}/../054.rb", "w+") do |io|
      io.puts("2\n")
      io.close_write
      expect(io.readlines.join).to eq("Yes\n")
    end
  end

  it 'test with "3\n"' do
    IO.popen("ruby #{__dir__}/../054.rb", "w+") do |io|
      io.puts("3\n")
      io.close_write
      expect(io.readlines.join).to eq("No\n")
    end
  end

end
