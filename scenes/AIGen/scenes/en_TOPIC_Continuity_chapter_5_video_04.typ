#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Continuous Extendability 🌉]
#v(40pt)
#only("1-")[- Function can be made continuous by defining/redefining values at certain points]
#v(20pt)
#only("2-")[- Example: $f(x) = (x^2 - 1)/(x - 1)$]
#only("1")[
#voiceover("A function is said to be continuously extendable if it can be made continuous by defining or redefining its value at certain points.")
]
#only("2")[
#voiceover("For example, consider the function f of x equals x squared minus 1 divided by x minus 1.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Simplifying the Function 🧮]
#v(40pt)
#only("1-")[- Simplify: $f(x) = (x^2 - 1)/(x - 1) = x + 1$ for $x != 1$]
#v(20pt)
#only("2-")[- $f(1)$ is undefined 🚫]
#only("1")[
#voiceover("We can simplify this function. For x not equal to 1, it simplifies to x plus 1.")
]
#only("2")[
#voiceover("However, at x equals 1, the function is undefined because we would be dividing by zero.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Extending the Function 🔧]
#v(40pt)
#only("1-")[- Define $f(1) = 2$]
#v(20pt)
#only("2-")[- Now, $lim_(x -> 1) (x + 1) = 2$]
#only("1")[
#voiceover("To make the function continuous, we can define f of 1 to be equal to 2.")
]
#only("2")[
#voiceover("Now, the limit of x plus 1 as x approaches 1 is equal to 2.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Continuity Achieved ✅]
#v(40pt)
#only("1-")[- $f(x)$ is now continuous at $x = 1$]
#v(20pt)
#only("2-")[- $f(x)$ was continuously extendable]
#only("1")[
#voiceover("Therefore, the function f is now continuous at x equals 1.")
]
#only("2")[
#voiceover("We say that the original function was continuously extendable because we were able to make it continuous by defining a value at the problematic point.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)
#only("1-")[- Continuously extendable functions can be made continuous 🌉]
#v(20pt)
#only("2-")[- Define/redefine values at problematic points 🔧]
#v(20pt)
#only("3-")[- Check limits and function values for continuity ✅]
#only("1")[
#voiceover("In summary, continuously extendable functions are those that can be made continuous.")
]
#only("2")[
#voiceover("This is done by defining or redefining values at problematic points where the function is undefined or discontinuous.")
]
#only("3")[
#voiceover("To verify continuity, we check that the limits and the function values agree at these points after the extension.")
]
]