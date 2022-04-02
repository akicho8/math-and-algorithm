RSpec.describe 'test' do
  it 'test with "3\n12 18 24\n"' do
    IO.popen("ruby #{__dir__}/../016.rb", "w+") do |io|
      io.puts("3\n12 18 24\n")
      io.close_write
      expect(io.readlines.join).to eq("6\n")
    end
  end

end
