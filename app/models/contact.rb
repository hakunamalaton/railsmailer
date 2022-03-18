class Contact < MailForm::Base
    attribute :name, validate: true
    attribute :email, validate: /\A[^@\s]+@[^@\s]+\z/i
    attribute :file, attachment: true
    attribute :to_user, validate: true
  
    attribute :message
    attribute :nickname, captcha: true
  
    # Declare the e-mail headers. It accepts anything the mail method
    # in ActionMailer accepts.
    def headers
      {
        subject: "My Contact Form",
        to: "#{to_user}",
        from: %("#{name}" <#{email}>)
      }
    end
  end