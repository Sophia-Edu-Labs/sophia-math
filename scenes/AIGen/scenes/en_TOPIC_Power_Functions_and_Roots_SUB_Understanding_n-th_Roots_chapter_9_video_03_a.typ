#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Great Job! 🎉]
#v(40pt)
#only("1-")[That's the correct answer for $root(5, 32)$!]
#only("1")[
#voiceover("Great job! That's the correct answer for the 5th root of 32!")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[- $root(5, 32) = ?$]
#v(20pt)
#only("2-")[- $32 = 2^5$]
#v(20pt)
#only("3-")[- $root(5, 2^5) = 2$]
#only("1")[
#voiceover("Let's solve this step by step. We want to find the 5th root of 32.")
]
#only("2")[
#voiceover("First, we can rewrite 32 as 2 to the power of 5.")
]
#only("3")[
#voiceover("Now, the 5th root of 2 to the power of 5 is simply 2, because 2 raised to the power of 5 gives us 32.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Verification]
#v(40pt)
#only("1-")[- $2^5 = ?$]
#v(20pt)
#only("2-")[- $2^5 = 2 * 2 * 2 * 2 * 2$]
#v(20pt)
#only("3-")[- $2^5 = 32$]
#only("1")[
#voiceover("Let's verify this. We need to check if 2 to the power of 5 equals 32.")
]
#only("2")[
#voiceover("2 to the power of 5 means multiplying 2 by itself 5 times.")
]
#only("3")[
#voiceover("And indeed, 2 times 2 times 2 times 2 times 2 equals 32.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[- $root(5, 32) = 2$ ✅]
#only("1")[
#voiceover("Therefore, we can conclude that the 5th root of 32 is equal to 2. Great work!")
]
]