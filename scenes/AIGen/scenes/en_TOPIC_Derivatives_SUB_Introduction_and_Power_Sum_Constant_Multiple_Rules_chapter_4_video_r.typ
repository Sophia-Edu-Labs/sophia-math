#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Review: Combining Derivative Rules 📊]
#v(40pt)
#only("1-")[- Derivative rules simplify complex calculations 🧮]
#only("2-")[- We'll review how to combine power, sum, and constant multiple rules 🔍]
#only("3-")[- This helps us tackle more intricate functions efficiently 💡]

#only("1")[
#voiceover("Let's review how we combine derivative rules to handle more complex functions.")
]
#only("2")[
#voiceover("Specifically, we'll look at how the power rule, sum rule, and constant multiple rule work together.")
]
#only("3")[
#voiceover("This combination allows us to differentiate a wide range of functions more efficiently.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Key Rules Recap 📝]
#v(20pt)
#only("1-")[1. Power Rule: $dif/"dx" (x^n) = n x^(n-1)$]
#v(10pt)
#only("2-")[2. Sum Rule: $dif/"dx" (f(x) + g(x)) = f'(x) + g'(x)$]
#v(10pt)
#only("3-")[3. Constant Multiple Rule: $dif/"dx" (c f(x)) = c f'(x)$]

#only("1")[
#voiceover("First, let's quickly recap the power rule. The derivative of x to the n is n times x to the n minus 1.")
]
#only("2")[
#voiceover("Next, the sum rule states that the derivative of a sum is the sum of the derivatives.")
]
#only("3")[
#voiceover("Lastly, the constant multiple rule tells us that we can factor out constant coefficients when differentiating.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Combining Rules: Example 🌟]
#v(20pt)
#only("1-")[Consider: $f(x) = 3x^4 - 2x^2 + 5x - 7$]
#v(20pt)
#only("2-")[Step 1: Apply constant multiple and power rules]
#only("3-")[Step 2: Use the sum rule]
#v(20pt)
#only("4-")[$f'(x) = 12x^3 - 4x + 5$]

#only("1")[
#voiceover("Let's apply these rules to find the derivative of f of x equals 3 x to the fourth minus 2 x squared plus 5 x minus 7.")
]
#only("2")[
#voiceover("We start by applying the constant multiple rule and power rule to each term.")
]
#only("3")[
#voiceover("Then, we use the sum rule to combine these results.")
]
#only("4")[
#voiceover("This gives us f prime of x equals 12 x cubed minus 4 x plus 5.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary 🎓]
#v(40pt)
#only("1-")[- Combine rules for efficient differentiation 🔧]
#only("2-")[- Apply rules in sequence: constant multiple, power, then sum 🔢]
#only("3-")[- Practice with various functions to master this technique 💪]

#only("1")[
#voiceover("To summarize, combining derivative rules allows us to efficiently differentiate complex functions.")
]
#only("2")[
#voiceover("The key is to apply the rules in sequence: first the constant multiple and power rules to individual terms, then the sum rule to combine results.")
]
#only("3")[
#voiceover("With practice, you'll become proficient at applying these rules to a wide variety of functions.")
]
]