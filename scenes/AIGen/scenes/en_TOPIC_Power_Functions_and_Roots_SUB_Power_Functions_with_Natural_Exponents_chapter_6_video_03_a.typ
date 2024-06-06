#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Integral of $x^4$]
#v(40pt)
#only("1-")[- Find $∫x^4 dif x$]
#only("2-")[- Power rule: $∫x^n dif x = (x^(n+1))/(n+1) + C$ for $n ≠ -1$]
#only("3-")[- Here $n=4$, so $∫x^4 dif x = (x^(4+1))/(4+1) + C$]
#only("4-")[- Simplify: $∫x^4 dif x = (x^5)/5 + C$]
#only("1")[
#voiceover("Great job! That's the correct answer. Let's see how we can solve this step by step.")
]
#only("2")[
#voiceover("To find the integral of x to the power of 4, we can use the power rule for integration. It states that the integral of x to the power of n is equal to x to the power of n plus 1, divided by n plus 1, plus a constant C. This is true for all n not equal to negative 1.")
]
#only("3")[
#voiceover("In our case, n is equal to 4. So we can directly apply the power rule. The integral of x to the power of 4 is equal to x to the power of 4 plus 1, which is 5, divided by 4 plus 1, which is 5, plus a constant C.")
]
#only("4")[
#voiceover("Simplifying this, we get that the integral of x to the power of 4 is equal to x to the power of 5 divided by 5, plus a constant C. And that's our final answer!")
]
]