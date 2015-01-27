require './spec/spec_helper'

# a revoir car copié/collé
describe 'Mailer' do
  before(:each) do
    Pony.stub!(:deliver)
  end

  it "sends mail" do
    Pony.should_receive(:mail) do |mail|
      mail.to.should == [ 'joe@example.com' ]
      mail.from.should == [ 'sender@example.com' ]
      mail.subject.should == 'hi'
      mail.body.should == 'Hello, Joe.'
    end

    Pony.mail(to: 'joe@example.com', from: 'sender@example.com', subject: 'hi', body: 'Hello, Joe.')
  end

  it 'test_mailer' do
    Pony.should_receive(:mail) do |mail|
        mail.to.should == ['me@mine.com.au']
    end
    post '/mailer'
  end

end