require('pry')
require('rspec')
require('contacts')

describe('#save') do
  it("saves the users informatin and pushes into an array") do
    contact = Contact.new("Danny", "Garcia", "Student", "Epicodus", "400 SW 6th Avenue")
    contact.save()
    expect(Contact.all()).to(eq([contact]))
  end
end
