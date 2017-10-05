require 'fileutils'

namespace :bootswatch do

  desc 'Import bootswatch themes'
  task :import do |t, args|
    %w{ yeti cosmo cyborg cerulean darkly flatly journal litera lumen lux materia minty pulse readable sandstone simplex slate spacelab superhero united solar }.each do |theme|
      path = File.expand_path("app/assets/stylesheets/bootswatch/#{theme}")
      FileUtils.mkdir_p(path)

      puts path

      `wget https://www.bootswatch.com/4-alpha/#{theme}/_variables.scss https://www.bootswatch.com/4-alpha/#{theme}/_bootswatch.scss`
      FileUtils.mv '_variables.scss', "#{path}/_variables.scss"
      FileUtils.mv '_bootswatch.scss', "#{path}/_bootswatch.scss"
    end
  end

end
