#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Great job! You've correctly identified the decimal representation of two-fifths. Let's walk through the solution step-by-step to understand how we arrive at this result.")
]

#text(size: 30pt, weight: "bold")[Converting 2/5 to a Decimal]

#v(40pt)

#only("2-")[#text()[$2/5$]]
#only("2")[
#voiceover("We start with the fraction two-fifths.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Approach: Multiply by 2/2]
#v(40pt)
#only("1-")[- Multiply numerator and denominator by 2 ✖️]
#v(20pt)
#only("2-")[- This doesn't change the fraction's value 🔄]
#only("1")[
#voiceover("Our approach will be to multiply both the numerator and denominator by 2.")
]
#only("2")[
#voiceover("This doesn't change the value of the fraction, but it will make it easier to convert to a decimal.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Multiplication]
#v(40pt)
#only("1-")[$2/5 = (2 dot 2)/(5 dot 2)$]
#v(20pt)
#only("2-")[$= 4/10$]
#only("1")[
#voiceover("Let's multiply both the numerator and denominator by 2. Two times 2 in the numerator gives us 4.")
]
#only("2")[
#voiceover("And 5 times 2 in the denominator gives us 10. So, two-fifths is equal to four-tenths.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Convert to Decimal]
#v(40pt)
#only("1-")[$4/10 = 0.4$]
#v(20pt)
#only("2-")[💡 The decimal point goes before the last digit]
#only("1")[
#voiceover("Now, four-tenths is easy to convert to a decimal. It's simply zero point four.")
]
#only("2")[
#voiceover("Remember, when we have a fraction over 10, the decimal point goes before the last digit.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- We started with $2/5$ 📊]
#v(20pt)
#only("2-")[- Multiplied by $2/2$ to get $4/10$ 🔢]
#v(20pt)
#only("3-")[- Converted $4/10$ to $0.4$ 🎉]
#only("1")[
#voiceover("To summarize, we started with the fraction two-fifths.")
]
#only("2")[
#voiceover("We multiplied both the numerator and denominator by 2 to get four-tenths.")
]
#only("3")[
#voiceover("Finally, we converted four-tenths to its decimal form, which is zero point four. Great work on solving this problem!")
]
]