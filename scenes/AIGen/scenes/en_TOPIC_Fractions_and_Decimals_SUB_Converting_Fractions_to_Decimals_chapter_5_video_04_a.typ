#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Great job! You've got the correct answer. Let's walk through the solution step by step to understand how we convert one-fourth to a decimal.")
]

#text(size: 30pt, weight: "bold")[Converting 1/4 to a Decimal]

#v(40pt)

#only("2-")[#text()[$1/4$]]
#only("2")[
#voiceover("We start with the fraction one-fourth.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Method: Multiply by 25/25]
#v(40pt)
#only("1-")[- Multiply numerator and denominator by 25 ✖️]
#v(20pt)
#only("2-")[- This doesn't change the fraction's value 🔄]
#only("1")[
#voiceover("Our method involves multiplying both the numerator and denominator by 25.")
]
#only("2")[
#voiceover("This doesn't change the value of the fraction, as we're multiplying by 1 in the form of 25 over 25.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[$ 1/4 = (1 × 25) / (4 × 25) $]
#v(20pt)
#only("2-")[$ = 25/100 $]
#v(20pt)
#only("3-")[$ = 0.25 $]

#only("1")[
#voiceover("Let's start. We have one-fourth. We multiply both top and bottom by 25.")
]
#only("2")[
#voiceover("This gives us 25 over 100.")
]
#only("3")[
#voiceover("Now, 25 over 100 is equivalent to 0.25 in decimal form.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Understanding the Decimal]
#v(40pt)
#only("1-")[$ 0.25 = 25/100 = 1/4 $]
#v(20pt)
#only("2-")[🔢 The decimal point is before the second-to-last digit]

#only("1")[
#voiceover("Let's understand what 0.25 means. It's the same as 25 hundredths, which is equal to one-fourth.")
]
#only("2")[
#voiceover("Notice that the decimal point is placed before the second-to-last digit in 25.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- We converted $1/4$ to $0.25$ 🔄]
#v(20pt)
#only("2-")[- We multiplied by $25/25$ to get $25/100$ ✖️]
#v(20pt)
#only("3-")[- $25/100 = 0.25$ in decimal form 🔢]
#only("1")[
#voiceover("To summarize, we converted one-fourth to 0.25.")
]
#only("2")[
#voiceover("We did this by multiplying both numerator and denominator by 25, giving us 25 over 100.")
]
#only("3")[
#voiceover("And 25 over 100 is equal to 0.25 in decimal form. Great job understanding this conversion!")
]
]