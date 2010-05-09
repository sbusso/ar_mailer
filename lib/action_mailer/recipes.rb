# Capistrano Recipes for managing ar_mailer
#
#
#   after "deploy:stop",    "delayed_job:stop"
#   after "deploy:start",   "delayed_job:start"


Capistrano::Configuration.instance.load do
  namespace :ar_mailer do
    desc "Stop the ar_mailer process"
    task :stop, :roles => :app do
      run "cd #{current_path}; RAILS_ENV=#{rails_env} rake sendmail:stop"
    end

    desc "Start the ar_mailer process"
    task :start, :roles => :app do
      run "cd #{current_path}; RAILS_ENV=#{rails_env} rake sendmail:start"
    end

  end
end