task :send_deadline_mail => :environment do
  Task.where(status: ['Backlog', 'Pending']).each do |task|
    time = (task.deadline.to_time - Time.now.to_time) / 1.hours
    if [1,24].include?(time)
      UserMailer.send_deadline_mail.deliver!
    end
  end
end