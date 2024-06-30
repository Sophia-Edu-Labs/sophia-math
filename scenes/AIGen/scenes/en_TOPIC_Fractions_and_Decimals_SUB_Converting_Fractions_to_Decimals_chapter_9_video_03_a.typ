#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Great job! You've got the correct answer. Let's walk through the solution step by step to understand how we convert 11/5 to a decimal.")
]

#text(size: 30pt, weight: "bold")[Converting 11/5 to a Decimal]

#v(40pt)

#only("2-")[#text()[$11/5$]]
#only("2")[
#voiceover("We start with the fraction eleven fifths.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Multiply Both Parts by 2]
#v(40pt)
#only("1-")[$ 11/5 = (11 × 2)/(5 × 2) = 22/10 $]
#v(20pt)
#only("2-")[💡 This doesn't change the value of the fraction!]

#only("1")[
#voiceover("Our first step is to multiply both the numerator and denominator by 2. This gives us twenty-two tenths.")
]
#only("2")[
#voiceover("Remember, multiplying both parts of a fraction by the same number doesn't change its value.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Identify the Decimal Point]
#v(40pt)
#only("1-")[$ 22/10 = 2.2 $]
#v(20pt)
#only("2-")[🔍 The decimal point goes before the last digit]

#only("1")[
#voiceover("Now, we can easily convert twenty-two tenths to a decimal. It becomes two point two.")
]
#only("2")[
#voiceover("Notice that the decimal point is placed before the last digit of 22.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Final Answer]
#v(40pt)
#only("1-")[$ 11/5 = 2.2 $]
#v(20pt)
#only("2-")[✅ 11/5 is equivalent to 2.2 in decimal form]

#only("1")[
#voiceover("So, our final answer is that eleven fifths is equal to two point two in decimal form.")
]
#only("2")[
#voiceover("Well done! You've successfully converted a fraction to a decimal using this method of multiplying both parts by 2.")
]
]