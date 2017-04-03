class Journey

  attr_reader :history, :in_journey, :entry_station, :exit_station, :journey

  def initialize

    @in_journey = false
    @entry_station = nil
    @exit_station = nil

  end

  def start(station)
    puts 'Forgot to tap out!' if @in_journey
    @in_journey = true
    @entry_station = station
    @journey = {@entry_station => nil}

  end

  def end(station)
   @in_journey = false
   @exit_station = station
   @journey = {@entry_station => station}
  end

  def in_journey?
    @in_journey
  end

  def fare
    1
  end


end
