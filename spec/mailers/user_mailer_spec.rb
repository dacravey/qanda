require "rails_helper"

RSpec.describe UserMailer, type: :mailer do
  describe "signup_confirmation" do
    let(:mail) { UserMailer.signup_confirmation(self) }

    it "renders the headers" do
      expect(mail.subject).to eq("Signup confirmation")
      expect(mail.to).to eq([user.email])
      expect(mail.from).to eq(["admin@QuandA.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Thank you for joining the QuANDA community!")
    end
  end

end
