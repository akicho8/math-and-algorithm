RSpec.describe 'test' do
  it 'test with "3\n1 2 3\n10 20 30\n"' do
    IO.popen("ruby #{__dir__}/../023.rb", "w+") do |io|
      io.puts("3\n1 2 3\n10 20 30\n")
      io.close_write
      expect(io.readlines.join).to eq("22.000000000000\n")
    end
  end

end
