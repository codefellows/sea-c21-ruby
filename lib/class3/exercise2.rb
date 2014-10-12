# 5 points
#
# Write a program that chats with Nana, your hard of hearing Grandmother.
#
# Type 'BYE' to stop chatting with Nana. For example:
#
#   $ ruby exercise2.rb
#   Nana: HI SWEETIE! GIVE NANA A KISS!
#   BYE
#   Nana: BYE SWEETIE!
#
# If you type something that's not in all uppercase, like 'bye', then Nana
# replies like this:
#
#   $ ruby exercise2.rb
#   Nana: HI SWEETIE! GIVE NANA A KISS!
#   bye
#   Nana: HUH?! SPEAK UP, SWEETIE!"
#   BYE
#   Nana: BYE SWEETIE!
#
# If you type something that's in all uppercase, not including 'BYE', she
# responds like this:
#
#   $ ruby exercise2.rb
#   Nana: HI SWEETIE! GIVE NANA A KISS!
#   hi nana
#   Nana: HUH?! SPEAK UP, SWEETIE!
#   HI NANA
#   Nana: NOT SINCE 1936!
#   BYE
#   Nana: BYE SWEETIE!
#
# To make your program really believable, have Nana shout a random year
# between 1930 and 1950 each time. For example:
#
#   $ ruby exercise2.rb
#   Nana: HI SWEETIE! GIVE NANA A KISS!
#   hi nana
#   Nana: HUH?! SPEAK UP, SWEETIE!
#   HI NANA
#   Nana: NOT SINCE 1936!
#   what?
#   Nana: HUH?! SPEAK UP, SWEETIE!
#   WHAT?
#   Nana: NOT SINCE 1949!
#   bye
#   Nana: HUH?! SPEAK UP, SWEETIE!
#   BYE
#   Nana: BYE SWEETIE!
#
# TIP #1: Remember, 'BYE' != "BYE\n".
#
# Tip #2: Put the parts that happen over and over again inside a loop.
#
# Tip #3: Let the `rand` method return a number in a range starting at zero.
# What can you do to the number `rand` returns to make it at least 1930?
