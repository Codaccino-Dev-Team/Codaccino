class CodaccinoMailer < ActionMailer::Base
  def new_user_email(user)
      mail(
        :subject => 'Thanks for signing up bro!',
        :to      => user.email,
        :from    => 'jon@jonfaulkenberry.com',
      )
  end
end