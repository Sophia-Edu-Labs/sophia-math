#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's review the correct solution step-by-step, focusing on a method that involves multiplying both the numerator and denominator by 25.")
]

#text(size: 30pt, weight: "bold")[Converting 17/4 to a Decimal]

#v(40pt)

#only("2-")[#text()[$17/4$]]
#only("2")[
#voiceover("We start with the fraction seventeen over four.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Multiply by 25/25]
#v(40pt)
#only("1-")[$ 17/4 = (17 × 25) / (4 × 25) $]
#v(20pt)
#only("2-")[$ = 425 / 100 $]
#only("1")[
#voiceover("Our first step is to multiply both the numerator and denominator by 25. This is equivalent to multiplying by 1, so it doesn't change the value of the fraction. We do this because 25 times 4 equals 100, which will give us a denominator of 100.")
]
#only("2")[
#voiceover("After multiplication, we get 425 over 100.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Convert to Decimal]
#v(40pt)
#only("1-")[$ 425 / 100 = 4.25 $]
#v(20pt)
#only("2-")[💡 Decimal point before the second-to-last digit]
#only("1")[
#voiceover("Now, we can easily convert this to a decimal. 425 divided by 100 is 4.25.")
]
#only("2")[
#voiceover("Notice that when dividing by 100, we simply move the decimal point two places to the left. This places the decimal point before the second-to-last digit.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Final Answer]
#v(40pt)
#only("1-")[$ 17/4 = 4.25 $]
#v(20pt)
#only("2-")[✅ Equivalent decimal: 4.25]
#only("1")[
#voiceover("Therefore, our final answer is that 17 over 4 as a decimal is 4.25.")
]
#only("2")[
#voiceover("This method of multiplying by 25 over 25 is particularly useful when dealing with fractions that have 4 as a denominator, as it quickly converts them to an equivalent fraction over 100, which is easy to write as a decimal.")
]
]