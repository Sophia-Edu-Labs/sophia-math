#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Not quite. Let's review the correct solution step-by-step to understand how we convert 27/4 to a decimal.")
]

#text(size: 30pt, weight: "bold")[Converting Fractions to Decimals]

#v(40pt)

#only("2-")[#text()[$27/4$]]
#only("2")[
#voiceover("We start with the fraction twenty-seven over four.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Approach: Multiply by 25/25]
#v(40pt)
#only("1-")[- Multiply numerator and denominator by 25 ✖️]
#v(20pt)
#only("2-")[- This makes the denominator 100 💯]
#only("1")[
#voiceover("Our approach is to multiply both the numerator and denominator by 25.")
]
#only("2")[
#voiceover("This is a clever trick because it will make the denominator 100, which is easy to convert to a decimal.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Multiplication]
#v(40pt)
#only("1-")[$(27/4) * (25/25) = (27*25)/(4*25)$]
#v(20pt)
#only("2-")[$= 675/100$]
#only("1")[
#voiceover("Let's multiply 27 over 4 by 25 over 25. This doesn't change the value of the fraction because we're multiplying by 1.")
]
#only("2")[
#voiceover("When we multiply, we get 675 over 100.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Convert to Decimal]
#v(40pt)
#only("1-")[- $675/100 = 6.75$]
#v(20pt)
#only("2-")[- Move decimal point 2 places left ⬅️]
#only("1")[
#voiceover("Now we have 675 over 100. To convert this to a decimal, we simply move the decimal point two places to the left in 675.")
]
#only("2")[
#voiceover("This gives us 6.75.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Final Answer]
#v(40pt)
#only("1-")[#text(size: 24pt)[27/4 as a decimal is 6.75]]
#v(40pt)
#only("2-")[💡 Remember: 675/100 = 6.75]
#only("1")[
#voiceover("So, our final answer is that 27 over 4 as a decimal is 6.75.")
]
#only("2")[
#voiceover("Remember, when we have a fraction over 100, we can easily convert it to a decimal by moving the decimal point two places to the left.")
]
]