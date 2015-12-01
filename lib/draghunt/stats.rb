module Draghunt
  class Stats
    GIT_CMD = 'git log --numstat --pretty=oneline'
    CLOC_CMD = 'cloc ./ --by-file --quiet --csv'

    def git_stats
      @git ||= `#{GIT_CMD}`.lines.inject({}) do |m, line|
        if match = line.match(/\A\d*\s.*\t(\S*)\n/)
          m[match[1]] = (m[match[1]] || 0) + 1
        end; m
      end
    end

    def cloc_stats
      @cloc ||= `#{CLOC_CMD}`.lines.to_a[1..-1].inject({}) do |m, line|
        m[line.split(',')[1][2..-1]] = line.split(',').last.to_i; m
      end
    end

    def all_stats
      git_stats.inject([]) do |m, (k, v)|
        m << [k, v, cloc_stats[k]] if cloc_stats.key?(k); m
      end.sort { |x, y| x[1] <=> y[1] }
    end

    def self.print
      puts new.all_stats.map(&:inspect).join("\n")
    end
  end
end
