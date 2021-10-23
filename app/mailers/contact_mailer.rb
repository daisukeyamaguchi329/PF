class ContactMailer < ApplicationMailer
  def send_mail(contact)
    @contact = contact

    mail(
      from: contact.email,
      to:   ENV['TOMAIL'],
      subject: '【お問い合わせ】'
    )
  end
end