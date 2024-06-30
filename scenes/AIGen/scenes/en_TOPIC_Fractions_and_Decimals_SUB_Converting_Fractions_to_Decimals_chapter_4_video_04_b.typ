#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Not quite. Let's go through the solution step-by-step to see how to convert seven-eighths to a decimal.")
]

#text(size: 30pt, weight: "bold")[Converting 7/8 to a Decimal]

#v(40pt)

#only("2-")[#text()[$7/8$]]
#only("2")[
#voiceover("We start with the fraction seven-eighths.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Strategy: Multiply by 125/125]
#v(40pt)
#only("1-")[- Multiply numerator and denominator by 125 ✖️]
#v(20pt)
#only("2-")[- This makes the denominator 1000 🎯]
#only("1")[
#voiceover("Our strategy is to multiply both the numerator and denominator by 125. Why 125? Because 125 times 8 equals 1000, which will give us a fraction over 1000.")
]
#only("2")[
#voiceover("This is useful because a fraction over 1000 is easy to convert to a decimal - we just need to move the decimal point three places to the left.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Multiply by 125/125]
#v(40pt)
#only("1-")[$7/8 = (7 dot 125)/(8 dot 125)$]
#v(20pt)
#only("2-")[$= 875/1000$]
#only("1")[
#voiceover("Let's multiply our fraction by 125 over 125. This doesn't change the value of the fraction because we're multiplying by 1.")
]
#only("2")[
#voiceover("Seven times 125 is 875, and 8 times 125 is 1000. So our new fraction is 875 over 1000.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Convert to Decimal]
#v(40pt)
#only("1-")[$875/1000 = 0.875$]
#v(20pt)
#only("2-")[Move decimal point 3 places left ⬅️]
#only("1")[
#voiceover("Now we have 875 over 1000. To convert this to a decimal, we simply move the decimal point three places to the left.")
]
#only("2")[
#voiceover("This gives us 0.875.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- We started with $7/8$ 📜]
#v(20pt)
#only("2-")[- We multiplied by $125/125$ ✖️]
#v(20pt)
#only("3-")[- We got $875/1000 = 0.875$ 🎉]
#only("1")[
#voiceover("To summarize, we started with the fraction seven-eighths.")
]
#only("2")[
#voiceover("We multiplied both the numerator and denominator by 125 to get 875 over 1000.")
]
#only("3")[
#voiceover("Finally, we converted 875 over 1000 to the decimal 0.875. And that's our final answer! Well done!")
]
]