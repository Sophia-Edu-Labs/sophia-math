#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Great job! You've got the correct answer. Let's walk through the solution step by step to understand how we convert 9/2 to a decimal.")
]

#text(size: 30pt, weight: "bold")[Converting 9/2 to a Decimal]

#v(40pt)

#only("2-")[#text()[$9/2$]]
#only("2")[
#voiceover("We start with the fraction nine over two.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Approach: Multiply by 5/5]
#v(40pt)
#only("1-")[- Multiply numerator and denominator by 5 ✖️]
#v(20pt)
#only("2-")[- This doesn't change the fraction's value ⚖️]
#v(20pt)
#only("3-")[- It makes the division easier 🧮]
#only("1")[
#voiceover("Our approach will be to multiply both the numerator and denominator by 5.")
]
#only("2")[
#voiceover("This doesn't change the value of the fraction, as we're multiplying by 5 over 5, which equals 1.")
]
#only("3")[
#voiceover("But it will make our division easier.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Multiply by 5/5]
#v(40pt)
#only("1-")[$9/2 = (9 × 5)/(2 × 5)$]
#v(20pt)
#only("2-")[$= 45/10$]
#only("1")[
#voiceover("Let's multiply 9 over 2 by 5 over 5. In the numerator, we get 9 times 5, and in the denominator, we get 2 times 5.")
]
#only("2")[
#voiceover("This gives us 45 over 10.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Divide]
#v(40pt)
#only("1-")[$45/10 = 4.5$]
#v(20pt)
#only("2-")[Place decimal point before last digit ➡️ 4.5]
#only("1")[
#voiceover("Now we can easily divide 45 by 10.")
]
#only("2")[
#voiceover("When dividing by 10, we simply move the decimal point one place to the left. So 45 becomes 4.5.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Final Answer]
#v(40pt)
#only("1-")[#text(size: 24pt)[9/2 as a decimal is 4.5]]
#v(40pt)
#only("2-")[💡 Remember: 9/2 = 45/10 = 4.5]
#only("1")[
#voiceover("Therefore, our final answer is that 9 over 2 as a decimal is 4.5.")
]
#only("2")[
#voiceover("Remember, we got this by multiplying both the numerator and denominator by 5, which gave us 45 over 10, which is equal to 4.5.")
]
]