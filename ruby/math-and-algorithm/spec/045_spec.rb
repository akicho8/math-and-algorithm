RSpec.describe 'test' do
  it 'test with "3\n"' do
    IO.popen("ruby #{__dir__}/../045.rb", "w+") do |io|
      io.puts("3\n")
      io.close_write
      expect(io.readlines.join).to eq("85\n")
    end
  end

  it 'test with "45\n"' do
    IO.popen("ruby #{__dir__}/../045.rb", "w+") do |io|
      io.puts("45\n")
      io.close_write
      expect(io.readlines.join).to eq("414031736\n")
    end
  end

end
