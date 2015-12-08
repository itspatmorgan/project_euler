# You are given the following information, but you may prefer to do some research for yourself.

# 1 Jan 1900 was a Monday.
# Thirty days has September,
# April, June and November.
# All the rest have thirty-one,
# Saving February alone,
# Which has twenty-eight, rain or shine.
# And on leap years, twenty-nine.

# A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.
# How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?

# 01-01-1901 was a Tuesday
# First sunday was 01-06-1901

# only want to check 1sts of months (1200 max)
# increment by number of days in month

-5 + increment % 7

century = (1901..2000)

sundays = 0

year = 365
leap_year = 366

yr = {
	jan: 31,
	feb: 28,
	mar: 31,
	apr: 30,
	may: 31,
	jun: 30,
	jul: 31,
	aug: 31,
	sep: 30,
	oct: 31,
	nov: 30,
	dec: 31
}

for year in century do
	if year % 4 == 0
		yr[:feb] = 29


	else 
		yr
	end
end
