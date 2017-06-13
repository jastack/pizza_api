desc "This task is called by the Heroku schedule add-on"
task :update_pizza => :environment do
  puts "Updating pizza..."
    Pizza.load_pizza_list
  puts "done"
end
