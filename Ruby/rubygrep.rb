file_name = ARGV[0]
regex = Regexp.new ARGV[1]
File.new(file_name).each_line do |line|
    if (ARGV[1] =~ regex) == 0
        puts line
    end
end
