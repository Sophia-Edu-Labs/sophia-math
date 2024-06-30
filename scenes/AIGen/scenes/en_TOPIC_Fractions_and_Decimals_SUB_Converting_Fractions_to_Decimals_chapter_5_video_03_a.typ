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
#voiceover("Our first step is to multiply both the numerator and denominator by 2. This doesn't change the value of the fraction, but it gives us an equivalent fraction that's easier to convert to a decimal.")
]
#only("2")[
#voiceover("Three times two is six, and five times two is ten. So, three-fifths is equal to six-tenths.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Identify the Decimal]
#v(40pt)
#only("1-")[- $6/10 = 0.6$]
#v(20pt)
#only("2-")[💡 The denominator 10 indicates the decimal point position]

#only("1")[
#voiceover("Now, six-tenths is a fraction that we can easily recognize as a decimal. It's equal to zero point six.")
]
#only("2")[
#voiceover("Here's a helpful tip: when the denominator is 10, the numerator becomes the digit(s) after the decimal point.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Final Answer]
#v(40pt)
#only("1-")[$ 3/5 = 0.6 $]
#v(20pt)
#only("2-")[✅ Three-fifths as a decimal is 0.6]

#only("1")[
#voiceover("Therefore, we can conclude that three-fifths as a decimal is zero point six.")
]
#only("2")[
#voiceover("And there you have it! We've successfully converted three-fifths to its decimal form. Remember, this method of multiplying both the numerator and denominator by the same number to get a denominator of 10 can be very useful for converting fractions to decimals.")
]
]