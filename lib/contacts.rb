class Contact
  @@info = []
  attr_reader
  attr_accessor :first_name, :last_name, :job_title, :company, :address

  def initialize(first_name, last_name, job_title, company, address)
    @first_name = first_name
    @last_name = last_name
    @job_title = job_title
    @company = company
    @address = address
  end

  def self.all()
    @@info
  end

  def save()
    @@info.push(self)
  end

end
