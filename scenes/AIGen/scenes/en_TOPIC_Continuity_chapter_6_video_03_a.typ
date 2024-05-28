#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Limits of Sums]
#v(40pt)
#only("1-")[- Given: $f(x) = x^2$ and $g(x) = 2x$]
#v(20pt)
#only("2-")[- Goal: Find $lim_(x -> 2) (f(x) + g(x))$]
#only("1")[
#voiceover("Great job! That's the correct answer. Let's go through the solution step by step. We are given two functions: f of x equals x squared and g of x equals 2x.")
]
#only("2")[
#voiceover("Our goal is to find the limit as x approaches 2 of the sum of these functions, f of x plus g of x.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Limit Laws]
#v(40pt)
#only("1-")[- Limit of a sum = Sum of limits 🧮]
#v(20pt)
#only("2-")[- $lim_(x -> 2) (f(x) + g(x)) = lim_(x -> 2) f(x) + lim_(x -> 2) g(x)$]
#only("1")[
#voiceover("The first step is to recall the limit laws. The limit of a sum is equal to the sum of the limits.")
]
#only("2")[
#voiceover("So, we can rewrite our problem as the limit as x approaches 2 of f of x plus the limit as x approaches 2 of g of x.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Evaluate Limits]
#v(40pt)
#only("1-")[- $lim_(x -> 2) f(x) = lim_(x -> 2) x^2 = 2^2 = 4$]
#v(20pt)
#only("2-")[- $lim_(x -> 2) g(x) = lim_(x -> 2) 2x = 2 * 2 = 4$]
#only("1")[
#voiceover("Next, we evaluate each limit separately. The limit as x approaches 2 of f of x is the limit as x approaches 2 of x squared, which equals 2 squared, or 4.")
]
#only("2")[
#voiceover("Similarly, the limit as x approaches 2 of g of x is the limit as x approaches 2 of 2x, which equals 2 times 2, or 4.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Add Limits]
#v(40pt)
#only("1-")[- $lim_(x -> 2) (f(x) + g(x)) = lim_(x -> 2) f(x) + lim_(x -> 2) g(x)$]
#v(20pt)
#only("2-")[- $= 4 + 4 = 8$ ✅]
#only("1")[
#voiceover("Finally, we add the limits together. The limit as x approaches 2 of f of x plus g of x equals the limit as x approaches 2 of f of x plus the limit as x approaches 2 of g of x.")
]
#only("2")[
#voiceover("This equals 4 plus 4, which is 8. And that's our final answer!")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Limit of a sum = Sum of limits 🧮]
#v(20pt)
#only("2-")[- Evaluate limits separately 📊]
#v(20pt)
#only("3-")[- Add limits to get final answer ➕]
#only("1")[
#voiceover("In summary, when finding the limit of a sum, we can use the limit law that states the limit of a sum is equal to the sum of the limits.")
]
#only("2")[
#voiceover("We evaluate each limit separately.")
]
#only("3")[
#voiceover("And then we add the limits together to get our final answer.")
]
]