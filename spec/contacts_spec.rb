
require('pry')
require('rspec')
require('contacts')

describe(".all") do
it("is empty at first") do
  expect(Contact.all()).to(eq([]))
  end
end
describe('#save') do
  it("saves the users informatin and pushes into an array") do
    contact = Contact.new("Danny", "Garcia", "Student", "Epicodus", "400 SW 6th Avenue", "Portland", "Oregon", "97219", "123456789")
    contact.save()
    expect(Contact.all()).to(eq([contact]))
  end
end
