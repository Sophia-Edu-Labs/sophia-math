#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Limits of Sums and Products]
#v(40pt)
#only("1-")[- Key concept in calculus 🧮]
#v(20pt)
#only("2-")[- Helps simplify limit calculations 🙌]
#only("1")[
#voiceover("Today, we're discussing a key concept in calculus: the limits of sums and products. Understanding this idea can greatly simplify your limit calculations.")
]
#only("2")[
#voiceover("Instead of trying to find the limit of a complex expression all at once, we can break it down into smaller, more manageable parts.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Limit of a Sum 🧮➕]
#v(40pt)
#only("1-")[$ lim_(x->a) (f(x) + g(x)) = lim_(x->a) f(x) + lim_(x->a) g(x) $]
#v(20pt)
#only("2-")[Example: $ lim_(x->2) (x^2 + 3x) = lim_(x->2) x^2 + lim_(x->2) 3x $]
#v(20pt)
#only("3-")[$ = 2^2 + 3 dot 2 = 4 + 6 = 10 $]
#only("1")[
#voiceover("First, let's consider the limit of a sum. The limit of a sum is equal to the sum of the limits. In other words, to find the limit of f of x plus g of x as x approaches a, we can find the limit of f of x as x approaches a, plus the limit of g of x as x approaches a.")
]
#only("2")[
#voiceover("For example, let's find the limit of x squared plus 3x as x approaches 2. We can break this down into the limit of x squared as x approaches 2, plus the limit of 3x as x approaches 2.")
]
#only("3")[
#voiceover("Evaluating these limits, we get 2 squared, which is 4, plus 3 times 2, which is 6. So the limit of x squared plus 3x as x approaches 2 is 10.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Limit of a Product 🧮✖]
#v(40pt)
#only("1-")[$ lim_(x->a) (f(x) dot g(x)) = lim_(x->a) f(x) dot lim_(x->a) g(x) $]
#v(20pt)
#only("2-")[Example: $ lim_(x->1) (x^2 dot (2x + 1)) = lim_(x->1) x^2 dot lim_(x->1) (2x + 1) $]
#v(20pt)
#only("3-")[$ = 1^2 dot (2 dot 1 + 1) = 1 dot 3 = 3 $]
#only("1")[
#voiceover("Similarly, the limit of a product is the product of the limits. To find the limit of f of x times g of x as x approaches a, we find the limit of f of x as x approaches a, and multiply it by the limit of g of x as x approaches a.")
]
#only("2")[
#voiceover("Let's try an example. Find the limit of x squared times the quantity 2x plus 1, as x approaches 1. We can rewrite this as the limit of x squared as x approaches 1, times the limit of 2x plus 1 as x approaches 1.")
]
#only("3")[
#voiceover("Evaluating these limits, we get 1 squared, which is 1, times 2 times 1 plus 1, which is 3. So the limit of x squared times 2x plus 1, as x approaches 1, is 3.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Limit of a sum = sum of limits ➕]
#v(20pt)
#only("2-")[- Limit of a product = product of limits ✖]
#v(20pt)
#only("3-")[- Simplifies complex limit calculations 🎉]
#only("1")[
#voiceover("In summary, the limit of a sum is the sum of the limits,")
]
#only("2")[
#voiceover("and the limit of a product is the product of the limits.")
]
#only("3")[
#voiceover("By remembering these rules, you can simplify complex limit calculations and tackle them with confidence!")
]
]