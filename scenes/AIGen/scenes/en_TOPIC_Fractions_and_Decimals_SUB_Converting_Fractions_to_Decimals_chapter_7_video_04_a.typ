#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Great job! You've got the correct answer. Let's walk through the solution step by step to understand how we convert three-fifths to a decimal.")
]

#text(size: 30pt, weight: "bold")[Converting 3/5 to a Decimal]

#v(40pt)

#only("2-")[#text()[$3/5$]]
#only("2")[
#voiceover("We start with the fraction three-fifths.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Multiply by 2]
#v(40pt)
#only("1-")[- Multiply both numerator and denominator by 2]
#v(20pt)
#only("2-")[$ 3/5 = (3 × 2)/(5 × 2) = 6/10 $]

#only("1")[
#voiceover("The first step is to multiply both the numerator and denominator by 2. This doesn't change the value of the fraction, but it makes it easier to convert to a decimal.")
]
#only("2")[
#voiceover("So, three-fifths equals three times two over five times two, which simplifies to six-tenths.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Identify the Decimal]
#v(40pt)
#only("1-")[- $6/10 = 0.6$]
#v(20pt)
#only("2-")[💡 The denominator 10 indicates the decimal point position]

#only("1")[
#voiceover("Now, six-tenths is a fraction that's easy to convert to a decimal. It equals zero point six.")
]
#only("2")[
#voiceover("Remember, when the denominator is 10, we can easily write the fraction as a decimal by placing the decimal point before the last digit of the numerator.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Final Answer]
#v(40pt)
#only("1-")[$ 3/5 = 0.6 $]
#v(20pt)
#only("2-")[✅ Decimal representation: 0.6]

#only("1")[
#voiceover("Therefore, three-fifths as a decimal is zero point six.")
]
#only("2")[
#voiceover("And there we have it! We've successfully converted three-fifths to its decimal representation of zero point six.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Started with $3/5$ 📊]
#v(20pt)
#only("2-")[- Multiplied by $2/2$ to get $6/10$ ✖️]
#v(20pt)
#only("3-")[- Converted $6/10$ to $0.6$ 🔢]

#only("1")[
#voiceover("To summarize, we started with the fraction three-fifths.")
]
#only("2")[
#voiceover("We multiplied both the numerator and denominator by two to get six-tenths.")
]
#only("3")[
#voiceover("Finally, we converted six-tenths to its decimal form, zero point six. Great work on solving this problem!")
]
]