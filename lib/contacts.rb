# save(["hats", "bats", "cats", "mats", "pats"])

class Contact
  @@info = []
  attr_reader
  attr_accessor :first_name, :last_name, :job_title, :company, :address, :city, :state, :zip_code, :phone_number

  def initialize(first_name, last_name, job_title, company, address, city, state, zip_code, phone_number)
    @first_name = first_name
    @last_name = last_name
    @job_title = job_title
    @company = company
    @address = address
    @city = city
    @state = state
    @zip_code = zip_code
    @phone_number = phone_number
  end

  def self.all()
    @@info
  end

  def self.clear()
    @@info = []
  end

    def save()
      if @@info.all? do |contact|
        self.first_name != "" and self.last_name != ""
      end
      @@info.push(self)
    end
  end


end

# ("Danny", "Garcia", " Studet", " Epicodus", " 400sw6thave", "portland", " oregon", "97210")
# contact.save()
