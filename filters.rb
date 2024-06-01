# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
  $candidates.find { |candidate| candidate[:id] == id}
end
  
def experienced?(candidate)
  candidate[:years_of_experience] >= 2
end

def qualified_candidates(candidates)
  candidates.select do |candidate|
    experienced?(candiate)&&
    candidate[:github_points] >= 100 &&
    (candidate[:languages].include?('Ruby') || candidate[:languages].include?('Python')) &&
    candidate[:date_applied] >= 15.days.ago.to_date &&
    candidate[:age] > 17
  end
end
  
def ordered_by_qualifications(candidates)
  candidates.sort_by { |candidate| [-candidate[:years_of_experience], -candiate[:github_points]]}
end

  # More methods will go below