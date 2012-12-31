# tasks/db/clean.rake

namespace :db do

  namespace :truncate do
    desc "Truncate all existing data"
    task :all => "db:load_config" do
      ActiveRecord::Base.establish_connection
      DatabaseCleaner.clean_with :truncation
    end
  end

  desc "Truncate all existing data except users table; db:truncate:all to truncate everything"
  task :truncate => "db:load_config" do
    ActiveRecord::Base.establish_connection
    # DatabaseCleaner.strategy = :truncation, {:except => %w[widgets]}
    # DatabaseCleaner.clean

    preserved_tables = %w[users templates questions question_categories simple_values]
    DatabaseCleaner.clean_with :truncation, {:except => preserved_tables}
    puts ">>> #{preserved_tables.join(", ")} tables were not removed; use rake db:truncate:all to remove everything
    "
  end

end
