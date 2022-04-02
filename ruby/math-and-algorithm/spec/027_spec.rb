RSpec.describe 'test' do
  it 'test with "3\n3 1 2\n"' do
    IO.popen("ruby #{__dir__}/../027.rb", "w+") do |io|
      io.puts("3\n3 1 2\n")
      io.close_write
      expect(io.readlines.join).to eq("1 2 3\n")
    end
  end

  it 'test with "10\n658 299 47 507 122 969 449 68 513 800\n"' do
    IO.popen("ruby #{__dir__}/../027.rb", "w+") do |io|
      io.puts("10\n658 299 47 507 122 969 449 68 513 800\n")
      io.close_write
      expect(io.readlines.join).to eq("47 68 122 299 449 507 513 658 800 969\n")
    end
  end

end
