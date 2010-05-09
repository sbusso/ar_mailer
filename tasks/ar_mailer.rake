# Re-definitions are appended to existing tasks
#require 'action_mailer/ar_sendmail'
#task :environment

namespace :ar_mailer do
  desc "Send pending mails."
  task :sendmail => :environment do
    ActionMailer::ARSendmail.run(["-o"])
  end
end

