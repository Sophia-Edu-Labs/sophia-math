#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Review: Adding Mixed Integers 🧮]
  #v(40pt)
  #only("1-")[- Real-world scenario: Counting money 💰]
  #only("2-")[- Combining single-digit and two-digit numbers]
  #only("3-")[- Simple addition process 🔢]

  #only("1")[
    #voiceover("Let's review adding mixed single-digit and two-digit integers. Imagine you're counting money in your piggy bank.")
  ]
  #only("2")[
    #voiceover("You might have both single-digit coins and two-digit bills. Adding these together is a common task.")
  ]
  #only("3")[
    #voiceover("The process is straightforward, just like adding any other numbers. Let's look at how we do this.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Addition Process]
  #v(40pt)
  #only("1-")[Example: $24 + 7 + 13$]
  #v(20pt)
  #only("2-")[1. Align numbers vertically]
  #only("3-")[2. Add from right to left]
  #only("4-")[3. Carry over when necessary]
  #v(20pt)
  #only("5-")[
    #align(center)[
      $
      24 \
      7 \
      + 13 \
      -----\
      44
      $
    ]
  ]

  #only("1")[
    #voiceover("Let's review with an example: twenty-four plus seven plus thirteen.")
  ]
  #only("2")[
    #voiceover("First, we align the numbers vertically, lining up the ones place.")
  ]
  #only("3")[
    #voiceover("Then, we add from right to left, starting with the ones place.")
  ]
  #only("4")[
    #voiceover("If a column sum exceeds 9, we carry over to the next column.")
  ]
  #only("5")[
    #voiceover("In this case, four plus seven plus three equals fourteen. We write down four and carry one. Then, two plus one plus the carried one equals four. So our final answer is forty-four.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary 📝]
  #v(40pt)
  #only("1-")[- Mixed addition is just like regular addition]
  #only("2-")[- Align numbers carefully]
  #only("3-")[- Add from right to left]
  #only("4-")[- Remember to carry over when needed]

  #only("1")[
    #voiceover("To recap, adding mixed single-digit and two-digit integers is just like regular addition.")
  ]
  #only("2")[
    #voiceover("The key is to align the numbers carefully, making sure the ones places line up.")
  ]
  #only("3")[
    #voiceover("Always add from right to left, starting with the ones place.")
  ]
  #only("4")[
    #voiceover("And don't forget to carry over when a column sum is 10 or more. With these steps, you can confidently add any combination of single-digit and two-digit numbers!")
  ]
]