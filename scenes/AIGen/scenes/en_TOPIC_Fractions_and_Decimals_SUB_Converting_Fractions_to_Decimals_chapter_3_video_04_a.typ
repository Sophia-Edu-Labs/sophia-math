#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Great job! You've got it right. Let's go through the solution step by step to understand how we convert one-fifth to a decimal.")
]

#text(size: 30pt, weight: "bold")[Converting 1/5 to a Decimal]

#v(40pt)

#only("2-")[#text()[$1/5$]]
#only("2")[
#voiceover("We start with the fraction one-fifth.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Multiply by 2/2]
#v(40pt)
#only("1-")[$ 1/5 = (1 × 2)/(5 × 2) $]
#v(20pt)
#only("2-")[$ = 2/10 $]
#only("1")[
#voiceover("The key step is to multiply both the numerator and denominator by 2. This doesn't change the value of the fraction, but it gives us a denominator that's a power of 10, which is easier to convert to a decimal.")
]
#only("2")[
#voiceover("After multiplying, we get two-tenths.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Convert to Decimal]
#v(40pt)
#only("1-")[$ 2/10 = 0.2 $]
#v(20pt)
#only("2-")[💡 The decimal point goes before the last digit]
#only("1")[
#voiceover("Now, we can easily convert two-tenths to a decimal. In decimal form, it's zero point two.")
]
#only("2")[
#voiceover("Remember, when converting a fraction with a denominator of 10 to a decimal, we simply place the decimal point before the last digit of the numerator.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- We started with $1/5$ 📊]
#v(20pt)
#only("2-")[- Multiplied by $2/2$ to get $2/10$ ✖️]
#v(20pt)
#only("3-")[- Converted $2/10$ to $0.2$ 🔢]
#only("1")[
#voiceover("To summarize, we started with the fraction one-fifth.")
]
#only("2")[
#voiceover("We multiplied both the numerator and denominator by 2 to get two-tenths.")
]
#only("3")[
#voiceover("Finally, we converted two-tenths to zero point two. And that's our answer!")
]
]