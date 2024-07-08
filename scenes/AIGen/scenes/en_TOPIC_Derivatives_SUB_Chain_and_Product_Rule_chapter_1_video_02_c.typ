#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Product Rule]
#v(40pt)
#only("1-")[The product rule is used to differentiate which type of functions?]
#v(40pt)
#only("-1")[a) Sum of functions]#only("2-")[#text(fill:red)[a) Sum of functions]]
#v(10pt)
#only("-2")[b) Difference of functions]#only("3-")[#text(fill:red)[b) Difference of functions]]
#v(10pt)
#only("-3")[c) Product of functions]#only("4-")[#text(fill:green)[c) Product of functions]]
#v(10pt)
#only("-4")[d) Quotient of functions]#only("5-")[#text(fill:red)[d) Quotient of functions]]
#v(40pt)

#only("1")[#voiceover("Excellent job! You've answered correctly. Let's go through each option to understand why.")]
#only("2")[#voiceover("a) Sum of functions is incorrect. We use the sum rule for differentiating sums of functions, not the product rule.")]
#only("3")[#voiceover("b) Difference of functions is also incorrect. The difference rule, which is essentially the same as the sum rule, is used for differences.")]
#only("4")[#voiceover("c) Product of functions is correct! The product rule is specifically designed to differentiate products of functions.")]
#only("5")[#voiceover("d) Quotient of functions is incorrect. We use the quotient rule for differentiating quotients or fractions of functions.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Product Rule Formula]
#v(40pt)
#only("1-")[If $f(x)$ and $g(x)$ are differentiable functions, then:]
#v(20pt)
#only("2-")[$(f(x) dot g(x))' = f'(x) dot g(x) + f(x) dot g'(x)$]
#v(40pt)
#only("3-")[Where:]
#v(10pt)
#only("4-")[- $f'(x)$ is the derivative of $f(x)$]
#v(10pt)
#only("5-")[- $g'(x)$ is the derivative of $g(x)$]

#only("1")[#voiceover("Now, let's look at the formula for the product rule.")]
#only("2")[#voiceover("The product rule states that the derivative of the product of two functions f of x and g of x is equal to the derivative of f times g, plus f times the derivative of g.")]
#only("3")[#voiceover("Let's break this down further.")]
#only("4")[#voiceover("f prime of x represents the derivative of the function f of x.")]
#only("5")[#voiceover("Similarly, g prime of x is the derivative of the function g of x.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[Let's differentiate: $y = x^2 dot sin(x)$]
#v(20pt)
#only("2-")[Step 1: Identify $f(x)$ and $g(x)$]
#v(10pt)
#only("3-")[- $f(x) = x^2$]
#only("4-")[- $g(x) = sin(x)$]
#v(20pt)
#only("5-")[Step 2: Find $f'(x)$ and $g'(x)$]
#v(10pt)
#only("6-")[- $f'(x) = 2x$]
#only("7-")[- $g'(x) = cos(x)$]

#only("1")[#voiceover("Let's work through an example to see how we apply the product rule.")]
#only("2")[#voiceover("We'll differentiate y equals x squared times sine of x. First, we need to identify our two functions.")]
#only("3")[#voiceover("We can see that f of x is x squared.")]
#only("4")[#voiceover("And g of x is sine of x.")]
#only("5")[#voiceover("Next, we need to find the derivatives of these functions.")]
#only("6")[#voiceover("The derivative of x squared is 2x.")]
#only("7")[#voiceover("And the derivative of sine of x is cosine of x.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example (Continued)]
#v(40pt)
#only("1-")[Step 3: Apply the product rule]
#v(20pt)
#only("2-")[$(x^2 dot sin(x))' = (2x) dot sin(x) + x^2 dot cos(x)$]
#v(40pt)
#only("3-")[This is our final answer! 🎉]

#only("1")[#voiceover("Now, let's apply the product rule using these components.")]
#only("2")[#voiceover("We get: the derivative of x squared times sine of x equals 2x times sine of x, plus x squared times cosine of x.")]
#only("3")[#voiceover("And there we have it! We've successfully applied the product rule to differentiate the product of two functions. Remember, the product rule is a powerful tool for handling more complex differentiation problems involving products of functions.")]
]