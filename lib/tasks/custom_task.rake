namespace :custom_task do
  desc "TODO"
  task display_user: :environment do
    puts Book.find(1)
  end
end
