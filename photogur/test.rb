@open_time = 17
@close_time = 23

def available_times
  all_timeslots = []
  hours_open = @close_time - @open_time

  hours_open.times do |hour|
    all_timeslots << (Time.now.midnight + hour.hours)
    all_timeslots << (Time.now.midnight + (hour + 0.5).hours)
  end

end

available_times
