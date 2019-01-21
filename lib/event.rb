
require 'pry'
class Event
  require 'time'
  attr_accessor :start_date, :length, :title, :attendees
  @@t = Time.now

  def initialize(start_date, length, title, attendees)
    @start_date = Time.parse(start_date)
    @length = length
    @title = title
    @attendees = attendees
  end
  def postphone_24h
    return @start_date = @start_date + 60 * 60 * 24
  end
  def end_date
    return end_date = @start_date + @length
  end
  def is_past
    return @start_date > @@t ? true : false
  end
  def is_future
    return @start_date < @@t ? true : false
  end
  def is_soon
    is_future && (@start_date >= (@@t - 60 * 30 ))
  end
  def to_s
    print "Titre : #{@title}\n"
    print "Date de début : #{@start_date}\n"
    print "Duréee : #{@length} minutes\n"
    print "Invités : #{@attendees}.join(", ")\n"
  end
end
