file_name = ARGV[0]
File.readlines(file_name).each do |line|
    if ARGV[1] =~ line
        puts line
    end
end
