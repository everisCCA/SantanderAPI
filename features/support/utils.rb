#encoding: utf-8
#!/usr/bin/env ruby

require 'tmpdir'

class Utils
  
  def self.timestamp
    time = Time.new
    time.strftime('%Y%m%d%H%M%S%6N')
  end

  def self.time_diff(start, finish)
    elapsed_time = ((finish - start) * 1000.0).to_i
    puts "Tempo de resposta para a requisição: #{elapsed_time} ms"
  end

end
