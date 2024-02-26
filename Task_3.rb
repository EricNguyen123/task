# frozen_string_literal: true

require 'date'

def print_calendar(year)
  days_in_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  days_in_month[1] = 29 if Date.leap?(year)

  first_day = Date.new(year, 1, 1)
  first_wday = first_day.wday

  offset = first_wday

  (1..12).each do |month|
    puts "    #{Date::MONTHNAMES[month]} #{year}"
    puts 'Su Mo Tu We Th Fr Sa'
    print '   ' * offset
    (1..days_in_month[month - 1]).each do |day|
      printf('%2d ', day)
      puts if (offset + day) % 7 == 0 || day == days_in_month[month - 1]
    end
    offset = (offset + days_in_month[month - 1]) % 7
    puts
  end
end

print_calendar(2019)
