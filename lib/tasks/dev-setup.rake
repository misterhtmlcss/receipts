namespace :local do
  desc "Setup new local Development or Test environments"
  task :setup => [:seed_db] if Rails.env.production?

  desc "setup db"
  task :seed_db do
    require File.join(Rails.root, 'db', "seeds.rb")
    Seed.run
  end
end

