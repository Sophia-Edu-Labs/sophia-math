#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Practicing Continuity 🏋️‍♀️]

#v(40pt)

#only("1-")[- Check limit and function value at various points]
#only("2-")[- Compare limit and function value]
#only("3-")[- Determine continuity based on comparison]

#v(40pt)

#only("1")[
#voiceover("When practicing continuity, we need to check the limit of the function and the function value at various points.")
]

#only("2")[
#voiceover("We then compare the limit and the function value at each point.")
]

#only("3")[
#voiceover("If the limit and the function value are equal at a point, the function is continuous at that point. If they are not equal or if the limit does not exist, the function is not continuous at that point.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example 📝]

#v(40pt)

#only("1-")[Consider the function $f(x) = (x^2 - 1) / (x - 1)$]

#v(20pt)

#only("2-")[Check continuity at $x = 1$:]
#only("3-")[- $lim_(x -> 1) f(x) = 2$]
#only("4-")[- $f(1)$ is undefined]
#only("5-")[⇒ $f(x)$ is not continuous at $x = 1$]

#v(20pt)

#only("6-")[But $f(x)$ can be made continuous at $x = 1$ by defining $f(1) = 2$]

#only("1")[
#voiceover("Let's consider the function f of x equals x squared minus 1 over x minus 1.")
]

#only("2")[
#voiceover("To check continuity at x equals 1, we need to:")
]

#only("3")[
#voiceover("First, find the limit of f of x as x approaches 1. This limit is equal to 2.")
]

#only("4")[
#voiceover("Next, evaluate f at 1. However, f of 1 is undefined because it would involve division by zero.")
]

#only("5")[
#voiceover("Since the limit exists but is not equal to the function value at x equals 1, which is undefined, f is not continuous at x equals 1.")
]

#only("6")[
#voiceover("However, f can be made continuous at x equals 1 by defining f of 1 to be equal to 2, the same as the limit value. This is an example of a function that is continuously extendable at a point.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]

#v(40pt)

#only("1-")[- Continuity requires $lim_(x -> a) f(x) = f(a)$]
#only("2-")[- Check limits and function values at various points]
#only("3-")[- Functions can sometimes be made continuous by defining values]

#only("1")[
#voiceover("The key takeaway is that for a function to be continuous at a point a, the limit of the function as x approaches a must be equal to the function value at a.")
]

#only("2")[
#voiceover("To practice continuity, we need to check limits and function values at various points.")
]

#only("3")[
#voiceover("Some functions that are not continuous can be made continuous by appropriately defining values at certain points, making them continuously extendable.")
]
]