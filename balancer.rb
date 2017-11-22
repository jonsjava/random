require 'optparse'

options = {}

OptionParser.new do |parser|
  parser.banner = 'Usage: balancer.rb [OPTIONS]'

  parser.on('-i', '--input-hash NAME', 'Username for liquibase admin') do |liquibase_admin|
    options[:liquibase_admin] = liquibase_admin
  end
end

def balancer(input_a)
  unless input_a.hash?
    puts "Invalid input"
  end
  open_bracket_count = 0
  closed_bracket_count = 0
  input_a.chars!
  input_a.each do |caracter_to_check|
    if character_to_check == ')'
      closed_bracket_count += 1
    end
    if character_to_check == '('
      open_bracket_count += ')'
    end
  end
  if open_bracket_count != closed_bracket_count
    return false
  else
    return true
  end
end
