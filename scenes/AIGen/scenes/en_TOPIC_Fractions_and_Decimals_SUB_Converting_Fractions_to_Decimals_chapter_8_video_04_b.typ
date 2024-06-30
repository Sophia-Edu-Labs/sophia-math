#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Not quite. Let's walk through the solution step by step to understand how we convert seven twentieths to a decimal.")
]

#text(size: 30pt, weight: "bold")[Converting 7/20 to a Decimal]

#v(40pt)

#only("2-")[#text()[$7/20$]]
#only("2")[
#voiceover("We start with the fraction seven over twenty.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Approach: Multiply by 5/5]
#v(40pt)
#only("1-")[- Multiply numerator and denominator by 5 📊]
#v(20pt)
#only("2-")[- This doesn't change the fraction's value ✅]
#only("1")[
#voiceover("Our approach will be to multiply both the numerator and denominator by 5.")
]
#only("2")[
#voiceover("This doesn't change the value of the fraction, as we're multiplying by 5 over 5, which equals 1.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Multiplication]
#v(40pt)
#only("1-")[$ 7/20 = (7 × 5)/(20 × 5) $]
#v(20pt)
#only("2-")[$ = 35/100 $]
#only("1")[
#voiceover("Let's multiply both the numerator and denominator by 5. Seven times 5 is 35, and twenty times 5 is 100.")
]
#only("2")[
#voiceover("So our new fraction is thirty-five over one hundred.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Decimal Conversion]
#v(40pt)
#only("1-")[$ 35/100 = 0.35 $]
#v(20pt)
#only("2-")[💡 The decimal point goes before the second-to-last digit]
#only("1")[
#voiceover("Now, thirty-five over one hundred is easy to convert to a decimal. It's simply zero point three five.")
]
#only("2")[
#voiceover("A helpful tip: when you have a fraction over 100, the decimal point in the answer goes before the second-to-last digit.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- We started with $7/20$ 📊]
#v(20pt)
#only("2-")[- Multiplied by $5/5$ to get $35/100$ ✖️]
#v(20pt)
#only("3-")[- Converted to decimal: $0.35$ 🎉]
#only("1")[
#voiceover("To summarize, we started with seven twentieths.")
]
#only("2")[
#voiceover("We multiplied both the numerator and denominator by 5 to get thirty-five hundredths.")
]
#only("3")[
#voiceover("Finally, we converted this to the decimal zero point three five. Well done on solving this problem!")
]
]