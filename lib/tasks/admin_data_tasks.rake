namespace :radiant do
  namespace :extensions do
    namespace :admin_data do
      
      desc "Copies public assets of the Author to the instance public/ directory."
      task :install => :environment do
        path = "/config/initializers"
        puts "Creating initializer for admin_data in #{path}..."
        mkdir_p RAILS_ROOT + path
        cp "#{AdminDataExtension.root}/config/initializers/admin_data.rb", RAILS_ROOT + path
      end
    end
  end
end
