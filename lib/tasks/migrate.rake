desc 'Migrate the database through scripts in db/migrate.'
namespace :db do

  task :migrate do
    ActiveRecord::Base.establish_connection "statistic_#{Rails.env}".to_sym
    ActiveRecord::Migrator.migrate('db/migrate/')
  end

end