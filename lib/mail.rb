module TMail
  class Mail
    attr_accessor :send_on
    
    def add_date
      self.date = @send_on || Time.now
    end
  end
end