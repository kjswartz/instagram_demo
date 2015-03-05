namespace :hello do
  desc "Say hello to the world"
  task :world => :environment do
    puts "Hello World"
  end

end
