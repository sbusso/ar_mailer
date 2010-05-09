# Re-definitions are appended to existing tasks
#require 'action_mailer/ar_sendmail'
#task :environment

namespace :sendmail do
  desc "Send pending mails."
  task :now => :environment do
    ActionMailer::ARSendmail.run(["-o"])
  end

  desc "Send pending mails."
  task :start => :environment do
    ActionMailer::ARSendmail.run(["-d"])
  end


end

