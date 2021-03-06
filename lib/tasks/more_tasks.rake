unless ARGV.any? {|a| a =~ /^gems/} # Don't load anything when running the gems:* tasks

require 'less'
require 'more'


namespace :more do
  desc "Generate CSS files from LESS files"
  task :parse => :environment do
    puts "Parsing files from #{Less::More.source_path}."
    Less::More.parse
    puts "Done."

  end
  
  desc "Remove generated CSS files"
  task :clean => :environment do
    puts "Deleting files.."
    Less::More.clean
    puts "Done."
  end
end

end
