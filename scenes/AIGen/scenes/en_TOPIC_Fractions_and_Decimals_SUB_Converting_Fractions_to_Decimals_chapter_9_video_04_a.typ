#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Great job! You've got the correct answer. Let's walk through the solution step by step to understand how we convert 13/8 to a decimal.")
]

#text(size: 30pt, weight: "bold")[Converting 13/8 to a Decimal]

#v(40pt)

#only("2-")[#text()[$13/8$]]
#only("2")[
#voiceover("We start with the fraction thirteen over eight.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Approach: Multiply by 125]
#v(40pt)
#only("1-")[- Multiply numerator and denominator by 125]
#v(20pt)
#only("2-")[- This makes the denominator 1000]
#v(20pt)
#only("3-")[- Easy to convert to decimal]
#only("1")[
#voiceover("Our approach will be to multiply both the numerator and denominator by 125. Why 125? Because 8 times 125 equals 1000, which will make it easy to convert to a decimal.")
]
#only("2")[
#voiceover("When we multiply the denominator by 125, we get 1000.")
]
#only("3")[
#voiceover("And when the denominator is 1000, it's very straightforward to convert to a decimal.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Multiply by 125]
#v(40pt)
#only("1-")[$13/8 = (13 dot 125)/(8 dot 125)$]
#v(20pt)
#only("2-")[$= 1625/1000$]
#only("1")[
#voiceover("Let's multiply both the numerator and denominator by 125. Thirteen times 125 is 1625, and 8 times 125 is 1000.")
]
#only("2")[
#voiceover("So our fraction becomes 1625 over 1000.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Convert to Decimal]
#v(40pt)
#only("1-")[$1625/1000 = 1.625$]
#v(20pt)
#only("2-")[Place decimal point 3 places from the right ⬅️]
#only("1")[
#voiceover("Now, to convert 1625 over 1000 to a decimal, we simply need to move the decimal point in 1625 three places to the left.")
]
#only("2")[
#voiceover("This is because 1000 has three zeros. So we get 1.625.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Final Answer]
#v(40pt)
#only("1-")[#text(size: 24pt)[13/8 as a decimal is 1.625]]
#v(40pt)
#only("2-")[💡 Remember: Multiplying by 125/125 = 1, so we didn't change the value!]
#only("1")[
#voiceover("Therefore, our final answer is that 13/8 as a decimal is 1.625.")
]
#only("2")[
#voiceover("Remember, we multiplied by 125 over 125, which equals 1, so we didn't change the value of the fraction. We just made it easier to convert to a decimal.")
]
]