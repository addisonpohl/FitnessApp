json.array! @fitness_trackers.each do |tracker|
  json.weight tracker.weight
  json.bpm tracker.bpm
  json.mood tracker.mood
end
