names = %w(alice white-rabbit cheshire-cat)

threads = names.map do |name|
  Thread.new do
    3.times { |i| puts "#{name}:#{i}" }
  end
end

# sample.rb が実行されたら、非同期に実行される threads を待たずに
# sample.rb のスレッドが終了してしまうので、threads の実行が終わるのを待つ必要がある
threads.each { |t|t.join }

puts "\n ll threads are terminated"
