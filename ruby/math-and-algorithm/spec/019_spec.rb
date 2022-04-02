RSpec.describe 'test' do
  it 'test with "6\n1 3 2 1 1 2\n"' do
    IO.popen("ruby #{__dir__}/../019.rb", "w+") do |io|
      io.puts("6\n1 3 2 1 1 2\n")
      io.close_write
      expect(io.readlines.join).to eq("4\n")
    end
  end

end
