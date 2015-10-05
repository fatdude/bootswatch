require 'fileutils'

namespace :bootswatch do

  desc 'Import bootswatch themes'
  task :import do |t, args|
    %w{ yeti paper cosmo cyborg cerulean darkly flatly journal lumen readable sandstone simplex slate spacelab superhero united }.each do |theme|
      path = File.expand_path("app/assets/stylesheets/bootswatch/#{theme}")
      FileUtils.mkdir_p(path)

      puts path

      `wget https://www.bootswatch.com/#{theme}/_variables.scss https://www.bootswatch.com/#{theme}/_bootswatch.scss`
      FileUtils.mv '_variables.scss', "#{path}/_variables.scss"
      FileUtils.mv '_bootswatch.scss', "#{path}/_bootswatch.scss"
    end
  end

end