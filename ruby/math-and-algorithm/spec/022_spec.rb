RSpec.describe 'test' do
  it 'test with "6\n40000 50000 20000 80000 50000 30000\n"' do
    IO.popen("ruby #{__dir__}/../022.rb", "w+") do |io|
      io.puts("6\n40000 50000 20000 80000 50000 30000\n")
      io.close_write
      expect(io.readlines.join).to eq("2\n")
    end
  end

end
