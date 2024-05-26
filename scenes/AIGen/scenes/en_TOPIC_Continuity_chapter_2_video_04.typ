#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's recap the key points about limits of sums and products.")
]
#text(size: 30pt, weight: "bold")[Limits of Sums and Products]
// The title "Limits of Sums and Products" is shown on this slide
#v(40pt)
#only("2")[
#voiceover("The limit of a sum is equal to the sum of the limits. In mathematical notation, this means that the limit as x approaches a of f of x plus g of x is equal to the limit as x approaches a of f of x plus the limit as x approaches a of g of x.")
]
#only("2-")[
$ lim_(x->a) ( f(x) + g(x) ) = lim_(x->a) f(x) + lim_(x->a) g(x) $
// The limit of a sum formula is shown from slide 2 onward
]
#v(40pt)
#only("3")[
#voiceover("Similarly, the limit of a product is equal to the product of the limits. This means that the limit as x approaches a of f of x times g of x is equal to the limit as x approaches a of f of x times the limit as x approaches a of g of x.")
]
#only("3-")[
$ lim_(x->a) ( f(x) g(x) ) = lim_(x->a) f(x) lim_(x->a) g(x) $
// The limit of a product formula is shown from slide 3 onward
]
]

#slide()[
#only("1")[
#voiceover("Let's look at an example to illustrate these concepts.")
]
#text(size: 30pt, weight: "bold")[Example]
// The title "Example" is shown on this slide
#v(40pt)
#only("2")[
#voiceover("Consider the limit as x approaches 3 of x squared plus 2 times x.")
]
#only("2-")[
$ lim_(x->3) ( x^2 + 2x ) $
// The example limit is shown from slide 2 onward
]
#v(40pt)
#only("3")[
#voiceover("Using the limit of a sum rule, we can break this into the limit as x approaches 3 of x squared plus the limit as x approaches 3 of 2 times x.")
]
#only("3-")[
$ = lim_(x->3) x^2 + lim_(x->3) 2x $
// The limit is broken into the sum of two limits from slide 3 onward
]
#v(40pt)
#only("4")[
#voiceover("Now, using the limit of a product rule on the second term, we get the limit as x approaches 3 of x squared plus 2 times the limit as x approaches 3 of x.")
]
#only("4-")[
$ = lim_(x->3) x^2 + 2 lim_(x->3) x $
// The limit of a product rule is applied to the second term from slide 4 onward
]
#v(40pt)
#only("5")[
#voiceover("Evaluating these limits, we get 3 squared, which is 9, plus 2 times 3, which is 6. So the final answer is 15.")
]
#only("5-")[
$ = 3^2 + 2 3 = 9 + 6 = 15 $
// The limits are evaluated to get the final answer from slide 5 onward
]
]

#slide()[
#only("1")[
#voiceover("To summarize the key points...")
]
#text(size: 30pt, weight: "bold")[Summary]
// The title "Summary" is shown on this slide
#v(40pt)
#only("2-")[
- Limit of a sum 🧮➕: $lim_(x->a) ( f(x) + g(x) ) = lim_(x->a) f(x) + lim_(x->a) g(x)$
// The limit of a sum rule is summarized from slide 2 onward
]
#v(40pt)
#only("3-")[
- Limit of a product 🧮✖: $lim_(x->a) ( f(x) g(x) ) = lim_(x->a) f(x) lim_(x->a) g(x)$
// The limit of a product rule is summarized from slide 3 onward
]
#v(40pt)
#only("4")[
#voiceover("These rules allow us to break down complex limits into simpler ones that are easier to evaluate. Remember to apply these rules step by step to simplify the limit and reach the final answer.")
]
]