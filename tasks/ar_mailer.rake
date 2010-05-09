# Re-definitions are appended to existing tasks
#require 'action_mailer/ar_sendmail'
#task :environment

namespace :sendmail do
  desc "Send pending mails."
  task :now => :environment do
    ActionMailer::ARSendmail.run(["-o"])
  end

  desc "Start ar_mailer daemon."
  task :start => :environment do
    ActionMailer::ARSendmail.run(["-d"])
  end

  desc "Stop ar_mailer daemon."
  task :stop => :environment do
    system "kill `cat #{RAILS_ROOT+'/tmp/pids/ar_sendmail.pid'}`"
  end

end

