class LongestLine
  def sort_lines_by_size(options = {:asc => false, :desc => false})
    lines = []
    line_number = 0

    sort_asc = options.fetch(:asc)
    sort_desc = options.fetch(:desc)

    File.open(ARGV[0]).each_line do |line|
      lines << line
    end
    num_lines = lines.delete_at(0).to_i # remove the 2
    if sort_desc
       lines.sort { |a, b| b.length <=> a.length }
    else
       lines.sort { |a, b| a.length <=> b.length }
    end
  end
end

ll = LongestLine.new
desc = ll.sort_lines_by_size(:asc => false, :desc => true)
asc = ll.sort_lines_by_size(:asc => true, :desc => false)

puts desc, "\n-----",asc
