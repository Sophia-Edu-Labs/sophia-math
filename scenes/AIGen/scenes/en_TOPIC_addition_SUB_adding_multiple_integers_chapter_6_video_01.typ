#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Adding Mixed Single-Digit and Two-Digit Integers]
  #v(40pt)

  #only("1-")[🧮 Combining numbers of different sizes]
  #v(20pt)
  #only("2-")[🔢 Single-digit: 0-9]
  #v(20pt)
  #only("3-")[🔢🔢 Two-digit: 10-99]
  #v(20pt)
  #only("4-")[➕ Goal: Find the total sum]

  #only("1")[
    #voiceover("Welcome to our lesson on adding mixed single-digit and two-digit integers. Imagine you're planning a party and need to calculate the total number of guests. Some of your friends are bringing small groups, while others are bringing larger groups. How do we add these numbers together?")
  ]
  #only("2")[
    #voiceover("First, let's clarify what we mean by single-digit numbers. These are the numbers from 0 to 9. They're like the small groups of friends coming to your party.")
  ]
  #only("3")[
    #voiceover("Two-digit numbers, on the other hand, range from 10 to 99. These represent the larger groups of guests.")
  ]
  #only("4")[
    #voiceover("Our goal is to find the total sum of all these numbers, just like we want to know the total number of guests at our party.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[How It Works]
  #v(40pt)

  #only("1-")[Example: 7 + 23 + 4 + 56]
  #v(20pt)
  #only("2-")[1️⃣ Identify: Single-digit (7, 4) and Two-digit (23, 56)]
  #v(20pt)
  #only("3-")[2️⃣ Add from left to right: 7 + 23 = 30]
  #v(20pt)
  #only("4-")[3️⃣ Continue: 30 + 4 = 34]
  #v(20pt)
  #only("5-")[4️⃣ Finish: 34 + 56 = 90]

  #only("1")[
    #voiceover("Let's look at an example to see how this works. Suppose we're adding 7 plus 23 plus 4 plus 56.")
  ]
  #only("2")[
    #voiceover("First, we identify the single-digit numbers, which are 7 and 4, and the two-digit numbers, which are 23 and 56.")
  ]
  #only("3")[
    #voiceover("Now, we start adding from left to right. We begin with 7 plus 23, which equals 30.")
  ]
  #only("4")[
    #voiceover("We continue by adding the next number, 4, to our current sum of 30. So, 30 plus 4 equals 34.")
  ]
  #only("5")[
    #voiceover("Finally, we add the last number, 56, to our current sum of 34. So, 34 plus 56 equals 90. And that's our final answer!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary]
  #v(40pt)

  #only("1-")[🔢 Mixed addition: Combining single-digit and two-digit numbers]
  #v(20pt)
  #only("2-")[📊 Process: Add from left to right]
  #v(20pt)
  #only("3-")[🎯 Result: Total sum of all numbers]

  #only("1")[
    #voiceover("To summarize, adding mixed single-digit and two-digit integers involves combining numbers of different sizes.")
  ]
  #only("2")[
    #voiceover("We do this by adding the numbers from left to right, regardless of whether they're single-digit or two-digit.")
  ]
  #only("3")[
    #voiceover("The end result is the total sum of all the numbers, just like finding the total number of guests at our party. This skill is useful in many real-life situations, from party planning to managing your pocket money!")
  ]
]