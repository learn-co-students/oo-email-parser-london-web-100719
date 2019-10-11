# Build a class EmailParser that accepts a string of unformatted emails. The parse method on the class should separate them into unique email addresses. The delimiters to support are commas (',') or whitespace (' ').

class EmailAddressParser
  attr_accessor :emails

  def initialize(email_addresses)
    @emails = email_addresses
  end

  def parse
    # First, split the emails by comma or whitespace using RegEx. Then, we'll throw out any email that's redundant.
    @emails = @emails.split(/\s|,\s/).uniq
  end
end