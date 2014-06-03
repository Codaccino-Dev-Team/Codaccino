class CodaccinoMailer < ActionMailer::Base
  def new_user_email(user)
      mail(
        :subject => 'Thanks for signing up bro!',
        :to      => user.email,
        :from    => 'team@codaccino.com',
      )
  end
end