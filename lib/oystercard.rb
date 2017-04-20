require_relative 'journey'

class Oystercard
  attr_reader :balance, :exit_station, :history
  attr_accessor :trip

  DEFAULT_LIMIT = 90
  MIN_FUNDS = 1
  FARE = 1

  def initialize
    @balance = 0

    #@entry_station = nil
    @exit_station = nil
    @journey = {}
    @trip = Journey.new
  end

  def top_up(amount)
    raise "Top-up would exceed £#{DEFAULT_LIMIT} limit" if @balance + amount > DEFAULT_LIMIT
    @balance += amount
  end

  def touch_in(station)
    raise 'Insuficient funds' if @balance < MIN_FUNDS
    @trip.start
    @trip.entry_station = station
  end

  def touch_out(station)
    @in_journey = false
    spend(FARE)
    @exit_station = station
    tracker
    @exit_station.delete(station)
  end



  def tracker
    @journey[@entry_station] = @exit_station
    @history << @journey
    @entry_station = nil
  end

  private

  def spend(amount)
    @balance -= amount
  end
end
