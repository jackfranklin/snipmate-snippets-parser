#!/usr/bin/env ruby

file_path = ARGV[0]
search_term = ARGV[1]
lines = []

File.read(file_path).each_line do |line|
  if search_term
    if lines.length == 0
      if line.include? "snippet #{search_term}"
        lines.push line
      end
    else
      if line.include? "snippet"
        break
      else
        lines.push line
      end
    end
  else
    lines.push line if line.include? "snippet"
  end
end
puts lines.select { |x| !x.empty? }.join
