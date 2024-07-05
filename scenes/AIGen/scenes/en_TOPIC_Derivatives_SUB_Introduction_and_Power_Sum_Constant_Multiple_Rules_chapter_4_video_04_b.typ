#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Derivative of a Polynomial]
#v(40pt)

#only("1-")[
$f(x) = 4x^3 + 3x^2 + 2x$
]

#v(20pt)

#only("2-")[
$f'(x) = 12x^2 + 6x + 2$
]

#v(20pt)

#only("3-")[
$f'(1) = 12(1)^2 + 6(1) + 2$
]

#v(20pt)

#only("4-")[
$f'(1) = 12 + 6 + 2 = 20$
]

#only("1")[
#voiceover("Not quite, but let's go through the correct solution step by step. We start with our function f of x equals 4x cubed plus 3x squared plus 2x.")
]

#only("2")[
#voiceover("To find the derivative, we apply the power rule and the sum rule. The derivative of 4x cubed is 12x squared. The derivative of 3x squared is 6x. And the derivative of 2x is simply 2. So, f prime of x equals 12x squared plus 6x plus 2.")
]

#only("3")[
#voiceover("Now, we need to evaluate this derivative at x equals 1. Let's substitute 1 for x in our derivative function.")
]

#only("4")[
#voiceover("Simplifying, we get 12 plus 6 plus 2, which equals 20. However, the correct answer is 17. Let's see where we went wrong.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Correcting Our Mistake]
#v(40pt)

#only("1-")[
$f'(x) = 12x^2 + 6x + 2$
]

#v(20pt)

#only("2-")[
$f'(1) = 12(1)^2 + 6(1) + 2$
]

#v(20pt)

#only("3-")[
$f'(1) = 12 + 6 + 2 = 20$
]

#v(20pt)

#only("4-")[
$f'(x) = 12x^2 + 6x + 2$
]

#v(20pt)

#only("5-")[
$f'(1) = 12(1)^2 + 6(1) + 2$
]

#v(20pt)

#only("6-")[
$f'(1) = 12 + 6 + 2 = 17$ ✅
]

#only("1")[
#voiceover("Let's review our work. We correctly found the derivative of f of x.")
]

#only("2")[
#voiceover("We also correctly substituted x equals 1 into our derivative function.")
]

#only("3")[
#voiceover("However, our calculation here was incorrect. Let's double-check our arithmetic.")
]

#only("4")[
#voiceover("Looking at our derivative function again...")
]

#only("5")[
#voiceover("And substituting x equals 1...")
]

#only("6")[
#voiceover("We see that 12 plus 6 plus 2 actually equals 17, not 20. This gives us the correct answer of 17.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)

#only("1-")[
- Apply power rule and sum rule correctly 📏
]

#v(20pt)

#only("2-")[
- Substitute values carefully 🔢
]

#v(20pt)

#only("3-")[
- Double-check arithmetic ✅
]

#v(20pt)

#only("4-")[
- Practice makes perfect! 💪
]

#only("1")[
#voiceover("Let's recap the key points from this problem. First, we correctly applied the power rule and sum rule to find the derivative.")
]

#only("2")[
#voiceover("Next, we carefully substituted x equals 1 into our derivative function.")
]

#only("3")[
#voiceover("However, we made a simple arithmetic error in our final calculation. This reminds us of the importance of double-checking our work.")
]

#only("4")[
#voiceover("Remember, everyone makes mistakes sometimes. The key is to learn from them and keep practicing. With more practice, you'll become more confident and accurate in your calculations.")
]
]