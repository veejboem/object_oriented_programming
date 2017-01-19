class Paperboy

  attr_reader = :name, :experience, :earnings
  attr_accessor = :paper_delivery, :extra_paper, :start_address, :end_address

  def initialize (name, experience=0, earnings=0)
    @name = name
    @experience = experience
    @earnings = earnings
  end

  def quota
    return (@experience / 2) + 50
  end

  def deliver (start_address, end_address)
    addresses_visited = (end_address - start_address)
    if addresses_visited  >= quota
      @earnings += 0.25 * quota
      @earnings += 0.5 * (addresses_visited - quota)
    else
      @earnings += (addresses_visited * 0.25) - 2
    end
  @earnings
  end

  def report
  "I'm #{ @name }, I've delivered #{ @experience } and I've earned #{ @earnings } so far"
  end
end
