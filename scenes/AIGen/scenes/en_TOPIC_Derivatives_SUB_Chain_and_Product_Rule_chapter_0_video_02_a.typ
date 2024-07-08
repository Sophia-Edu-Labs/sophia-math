#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Chain Rule]
#v(40pt)
The chain rule is used to differentiate which type of functions?
#v(20pt)
#only("-1")[a) Polynomial functions]#only("2-")[#text(fill:red)[a) Polynomial functions]]
#v(10pt)
#only("-2")[b) Composite functions]#only("3-")[#text(fill:green)[b) Composite functions]]
#v(10pt)
#only("-3")[c) Trigonometric functions]#only("4-")[#text(fill:red)[c) Trigonometric functions]]
#v(10pt)
#only("-4")[d) Exponential functions]#only("5-")[#text(fill:red)[d) Exponential functions]]

#only("1")[#voiceover("Not quite. Let's review each option to understand the correct solution.")]
#only("2")[#voiceover("a) Polynomial functions is incorrect. While we can use the chain rule on some polynomial functions, it's not specifically designed for them. We typically use the power rule for polynomials.")]
#only("3")[#voiceover("b) Composite functions is correct! The chain rule is specifically designed to differentiate composite functions, which are functions of functions.")]
#only("4")[#voiceover("c) Trigonometric functions is incorrect. Although we can use the chain rule with trigonometric functions, it's not exclusively for them. We have specific rules for differentiating trig functions.")]
#only("5")[#voiceover("d) Exponential functions is also incorrect. Like trigonometric functions, we can use the chain rule with exponential functions, but it's not specifically for them. We have separate rules for differentiating exponential functions.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Composite Functions]
#v(20pt)
#only("1-")[A composite function is a function of a function, like:
#v(10pt)
$f(g(x))$ or $(f circle g)(x)$]
#v(20pt)
#only("2-")[Example: $f(x) = (x^2 + 1)^3$]
#v(20pt)
#only("3-")[Here, $g(x) = x^2 + 1$ and $f(x) = x^3$]

#only("1")[#voiceover("Now, let's dive deeper into composite functions, which are the heart of the chain rule.")]
#only("2")[#voiceover("A composite function is a function of a function. We write it as f of g of x, or f circle g of x. Let's look at an example.")]
#only("3")[#voiceover("Consider the function f of x equals the quantity x squared plus 1, all cubed. This is a composite function because we can break it down into two functions: g of x equals x squared plus 1, and f of x equals x cubed.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Chain Rule]
#v(20pt)
#only("1-")[For $y = f(g(x))$, the chain rule states:
#v(10pt)
$dif y / dif x = dif f / dif g dot dif g / dif x$]
#v(20pt)
#only("2-")[For our example $f(x) = (x^2 + 1)^3$:
#v(10pt)
$dif f / dif x = 3(x^2 + 1)^2 dot 2x$]

#only("1")[#voiceover("The chain rule gives us a way to differentiate composite functions. It states that for y equals f of g of x, the derivative of y with respect to x is equal to the derivative of f with respect to g, multiplied by the derivative of g with respect to x.")]
#only("2")[#voiceover("Let's apply this to our example. For f of x equals the quantity x squared plus 1, all cubed, the derivative is 3 times the quantity x squared plus 1 squared, multiplied by 2x. This comes from applying the chain rule: we differentiate the outer function and multiply by the derivative of the inner function.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Why Chain Rule?]
#v(20pt)
#only("1-")[🔗 Breaks complex functions into simpler parts]
#v(10pt)
#only("2-")[🧩 Allows us to differentiate nested functions]
#v(10pt)
#only("3-")[🔄 Essential for many real-world applications]

#only("1")[#voiceover("The chain rule is crucial because it allows us to break down complex functions into simpler parts.")]
#only("2")[#voiceover("It gives us the ability to differentiate nested functions, which appear frequently in advanced mathematics and real-world applications.")]
#only("3")[#voiceover("From physics to economics, many real-world phenomena are modeled using composite functions, making the chain rule an essential tool in various fields.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(20pt)
#only("1-")[✅ Chain rule is for composite functions]
#v(10pt)
#only("2-")[🔑 Key to differentiating complex functions]
#v(10pt)
#only("3-")[🌟 Important in advanced math and applications]

#only("1")[#voiceover("To wrap up, remember that the chain rule is specifically used for differentiating composite functions.")]
#only("2")[#voiceover("It's a key tool that allows us to tackle more complex functions by breaking them down into simpler parts.")]
#only("3")[#voiceover("Understanding and applying the chain rule is crucial as you advance in mathematics and explore its applications in various fields. Great job on identifying this important concept!")]
]