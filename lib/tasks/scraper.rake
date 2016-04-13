namespace :scraper do
  namespace :tuicool do
    desc "import blogs from tuicool"
    task :import => :environment do
      TuicoolService.import
    end
  end
end