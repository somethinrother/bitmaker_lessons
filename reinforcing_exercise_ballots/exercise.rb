ballots = [{1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
           {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
           {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
           {1 =>'Boots', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}]

def vote_counter(results, ballot_list)
  points = {1 => 3, 2 => 2, 3 => 1}
  ballot_list.each do |ballot|
    ballot.each do |value, name|
      results[name] ||= 0
      results[name] += points[value]
    end
  end
end

def group_by_score(results, placements)
  results.each do |name, score|
    if !placements.keys.include?(score)
      placements[score] = [name]
    else
      placements[score] << name
    end
  end
end

def placement_message(ordered_results_list, array_position, rank)

  if ordered_results_list[array_position][0].length > 1
    print "#{rank}: "
    for name in ordered_results_list[array_position][0][(1..-1)] do
      print "#{name}, "
    end
    print "and #{ordered_results_list[array_position][0][0]} "
    print "with #{ordered_results_list[array_position][1]} points\n"
  else
    print "#{rank}: "
    ordered_results_list[array_position][0].each do |name|
      print "#{name} "
    end
    print "with #{ordered_results_list[array_position][1]} points\n"
  end

end

def give_results(ballot_list)
  results = {}
  placements = {}
  # # Run methods to count votes, create a hash that groups people with matching scores together, set the scores as values, then order them least to most.
  vote_counter(results, ballot_list)
  group_by_score(results, placements)
  placements_inverted = placements.invert
  ordered_results = placements_inverted.sort_by {|_key, value| value}

  # # Logic for first, second, and third place

  placement_message(ordered_results, -1, "First")
  placement_message(ordered_results, -2, "Second")
  placement_message(ordered_results, -3, "Third")

end

give_results(ballots)
