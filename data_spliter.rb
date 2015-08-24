class DataSpliter

  def initialize(file, line_limit, name_pattern)
    @file = File.open(file, "r:utf-8")
    @name_pattern = name_pattern
    @line_limit = line_limit
  end

  def split
    current_file_line_limit = 0
    file_count = 0
    @file.each_line do |line|
      File.open("#{@name_pattern}-#{file_count}.nt", 'a:utf-8') do |file|
        file.write(line)
      end
      current_file_line_limit += 1
      if current_file_line_limit > @line_limit
        file_count += 1
        puts "#{@name_pattern}-#{file_count}.nt"
        current_file_line_limit = 0
      end
    end
  end
end

DataSpliter.new('dbtropes-20150801.nt', 1_000_000, 'db_tropes_split').split
