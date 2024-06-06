#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Simplifying Rational Exponents]
#v(40pt)
#only("1-")[- Simplify $8^(2/3) / 8^(1/3)$]
// The problem is stated on slide 1 and stays visible
#only("1")[
#voiceover("Great job! That's the correct answer. Let's see how we can simplify the expression 8 to the power of 2/3 divided by 8 to the power of 1/3.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Recall the Rule 📜]
#v(40pt)
#only("1-")[- $a^(m/n) / a^(p/q) = a^((m q-n p)/(n q))$]
// The rule for dividing rational exponents is shown
#only("1")[
#voiceover("To simplify this, we can use the rule for dividing expressions with rational exponents. The rule states that a to the power of m over n divided by a to the power of p over q equals a to the power of mq minus np over nq.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Apply the Rule 🧮]
#v(40pt)
#only("1-")[- $8^(2/3) / 8^(1/3) = 8^((2*3-1*3)/(3*3))$]
#only("2-")[- $= 8^((6-3)/(9))$]
#only("3-")[- $= 8^(3/9)$]
// The rule is applied step by step
#only("1")[
#voiceover("Let's apply this rule to our problem. We have 8 to the power of 2/3 divided by 8 to the power of 1/3. This equals 8 to the power of 2 times 3 minus 1 times 3, all over 3 times 3.")
]
#only("2")[
#voiceover("Simplifying the numerator, 2 times 3 is 6, and 1 times 3 is 3. So we have 6 minus 3 in the numerator, and 3 times 3, which is 9, in the denominator.")
]
#only("3")[
#voiceover("6 minus 3 is 3. So our final simplified form is 8 to the power of 3/9.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Simplify Further 🎨]
#v(40pt)
#only("1-")[- $8^(3/9) = (8^(1/3))^3$]
#only("2-")[- $= 2^3$]
#only("3-")[- $= 8$]
// The expression is further simplified
#only("1")[
#voiceover("We can simplify this further by using the power rule for exponents. 8 to the power of 3/9 can be written as 8 to the power of 1/3, all raised to the power of 3.")
]
#only("2")[
#voiceover("Now, 8 to the power of 1/3 is equal to 2. This is because 2 cubed equals 8.")
]
#only("3")[
#voiceover("So we have 2 to the power of 3, which equals 8.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Conclusion 🎉]
#v(40pt)
#only("1-")[- $8^(2/3) / 8^(1/3) = 8$]
// The final answer is shown
#only("1")[
#voiceover("Therefore, 8 to the power of 2/3 divided by 8 to the power of 1/3 simplifies to 8. Great work on solving this problem!")
]
]