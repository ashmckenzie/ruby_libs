class String

  # Trim characters from the start and end of string (defaults to spaces)
  #
  def trim(chars)
    chars = "\s" if chars.nil?
    chars = Regexp.escape(chars)
    r = "^#{chars}*|#{chars}*$"
    self.gsub(/#{r}/, '')
  end

  # Trim characters from the end of string (defaults to spaces)
  #
  def rtrim(chars)
    chars = "\s" if chars.nil?
    chars = Regexp.escape(chars)
    r = "#{chars}*$"
    self.gsub(/#{r}/, '')
  end

end
