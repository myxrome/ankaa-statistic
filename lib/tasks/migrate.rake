namespace :statistic do
  namespace :db do

    desc 'Statistic module migration'
    task :migrate => [:environment] do
      migrate_path = File.expand_path(File.join(AnkaaStatistic::Engine.root, %w{ db/migrate/ }))
      ActiveRecord::Base.establish_connection "statistic_#{Rails.env}".to_sym
      ActiveRecord::Migrator.migrate(migrate_path)
    end

  end
end