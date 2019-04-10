require "google_holiday_calendar"
require 'net/https'

japan_calendar = GoogleHolidayCalendar::Calendar.new(country: "japanese", lang: "ja", api_key: "xxxxxxxxxxxxxxxxxxxxxxxxxxxx")

x = Date.today
to_day = x.strftime("%Y年 %m月 %d日").gsub(" ", "")
japan_calendar.holidays(start_date: x, end_date: x, limit: 5)

if japan_calendar.holiday?(x)
	puts"========================="
	puts "#{to_day}は祝日だね〜" # true
	puts"========================="
else
	puts"========================="
	puts "#{to_day}は祝日じゃないね〜" # faulse
	puts"========================="
end

y = x.tomorrow
if japan_calendar.holiday?(y)
	puts"========================="
	puts "ちなみに明日は祝日だね〜" # true
	puts"========================="
else
	puts"========================="
	puts "ちなみに明日は祝日じゃないね〜" # faulse
	puts"========================="
end