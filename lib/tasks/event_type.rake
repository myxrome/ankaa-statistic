namespace :event_type do

  desc 'Init event types into the system'
  task :init, :environment do
    EventType.create! name: 'Counter'
    EventType.create! name: 'Timer'
  end
end