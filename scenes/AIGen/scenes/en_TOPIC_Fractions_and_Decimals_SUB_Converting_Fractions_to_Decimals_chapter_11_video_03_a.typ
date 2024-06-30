#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Great job! You've correctly identified the solution. Let's walk through the process of converting 21/8 to a decimal together.")
]

#text(size: 30pt, weight: "bold")[Converting 21/8 to a Decimal]

#v(40pt)

#only("2-")[#text()[$21/8$]]
#only("2")[
#voiceover("We start with the fraction twenty-one over eight.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Approach]
#v(40pt)
#only("1-")[- Multiply numerator and denominator by 125 ✖️]
#v(20pt)
#only("2-")[- Simplify the result 🔢]
#v(20pt)
#only("3-")[- Place the decimal point ➡️]
#only("1")[
#voiceover("Our approach will be to multiply both the numerator and denominator by 125. This will give us a fraction with 1000 as the denominator, which is easy to convert to a decimal.")
]
#only("2")[
#voiceover("Then we'll simplify the result.")
]
#only("3")[
#voiceover("Finally, we'll place the decimal point correctly.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Multiply by 125]
#v(40pt)
#only("1-")[$21/8 = (21 dot 125)/(8 dot 125)$]
#v(20pt)
#only("2-")[$= 2625/1000$]
#only("1")[
#voiceover("Let's start by multiplying both the numerator and denominator by 125. Twenty-one times 125 is 2625, and 8 times 125 is 1000.")
]
#only("2")[
#voiceover("So our fraction becomes 2625 over 1000.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Simplify]
#v(40pt)
#only("1-")[$2625/1000 = 2.625$]
#v(20pt)
#only("2-")[Place decimal point 3 places from the end ⬅️]
#only("1")[
#voiceover("Now, to convert this to a decimal, we simply need to move the decimal point in 2625 three places to the left, because the denominator is 1000.")
]
#only("2")[
#voiceover("This gives us 2.625.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Final Answer]
#v(40pt)
#only("1-")[#text(size: 24pt)[21/8 as a decimal is 2.625]]
#v(40pt)
#only("2-")[💡 Remember: Multiplying by 125/125 = 1, so we didn't change the value!]
#only("1")[
#voiceover("So, our final answer is that 21/8 as a decimal is 2.625.")
]
#only("2")[
#voiceover("Remember, we multiplied by 125 over 125, which equals 1, so we didn't change the value of the fraction. We just made it easier to convert to a decimal.")
]
]