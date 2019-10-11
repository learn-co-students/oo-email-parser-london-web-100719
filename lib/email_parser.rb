# Build a class EmailParser that accepts a string of unformatted emails. The parse method on the class should separate them into unique email addresses. The delimiters to support are commas (',') or whitespace (' ').

class EmailAddressParser
  attr_accessor :emails

  def initialize(email_addresses)
    @emails = email_addresses
  end

  def parse
    # We're going to do a few things in one command. First, split the emails by comma or whitespace. Then, clean up the list by removing any empty strings. Lastly, we'll throw out any email that's redundant.
    @emails = @emails.split(/\s|,/).select{ |element| element.length > 0 }.uniq
  end
end