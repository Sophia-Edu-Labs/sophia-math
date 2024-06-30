#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Great job! You've got the correct answer. Let's walk through the solution step by step to understand how we convert 19/5 to a decimal.")
]

#text(size: 30pt, weight: "bold")[Converting 19/5 to a Decimal]

#v(40pt)

#only("2-")[#text()[$19/5$]]
#only("2")[
#voiceover("We start with the fraction nineteen over five.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Multiply by 2/2]
#v(40pt)
#only("1-")[$ 19/5 = 19/5 × 2/2 $]
#v(20pt)
#only("2-")[$ = (19 × 2) / (5 × 2) $]
#v(20pt)
#only("3-")[$ = 38/10 $]

#only("1")[
#voiceover("Our first step is to multiply both the numerator and denominator by 2. This doesn't change the value of the fraction, but it makes our calculation easier.")
]
#only("2")[
#voiceover("Nineteen times two in the numerator gives us thirty-eight, and five times two in the denominator gives us ten.")
]
#only("3")[
#voiceover("So now we have thirty-eight over ten.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Divide]
#v(40pt)
#only("1-")[$ 38 ÷ 10 = 3.8 $]
#v(20pt)
#only("2-")[💡 The decimal point goes before the last digit]

#only("1")[
#voiceover("Now we simply divide thirty-eight by ten. Thirty-eight divided by ten equals three point eight.")
]
#only("2")[
#voiceover("Notice that when we divide by ten, we just move the decimal point one place to the left. So the decimal point goes before the last digit of thirty-eight.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Final Answer]
#v(40pt)
#only("1-")[$ 19/5 = 3.8 $]
#v(20pt)
#only("2-")[✅ Decimal representation: 3.8]

#only("1")[
#voiceover("Therefore, nineteen fifths as a decimal is three point eight.")
]
#only("2")[
#voiceover("Well done! You've successfully converted a fraction to a decimal by multiplying both the numerator and denominator by 2 to get 38/10, and then placing the decimal point before the last digit.")
]
]