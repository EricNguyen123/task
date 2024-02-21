# frozen_string_literal: true

require 'date'

def print_calendar(year)
  days_in_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  days_in_month[1] = 29 if Date.leap?(year)

  (1..12).each do |month|
    date = Date.new(year, month, 1)
    wday = date.wday
    puts "    #{Date::MONTHNAMES[month]} #{year}"
    puts 'Su Mo Tu We Th Fr Sa'
    print '   ' * wday
    (1..days_in_month[month - 1]).each do |day|
      printf('%2d ', day)
      puts if wday == 6 || day == days_in_month[month - 1]
      wday = (wday + 1) % 7
    end
    puts
  end
end

print_calendar(2019)
