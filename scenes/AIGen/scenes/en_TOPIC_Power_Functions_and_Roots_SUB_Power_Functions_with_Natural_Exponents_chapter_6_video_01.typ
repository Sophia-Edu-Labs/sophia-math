#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Introduction to Integrals of Power Functions]
#v(40pt)
#only("1-")[- Imagine you are calculating the area under the curve of $f(x) = x^n$.]
#v(20pt)
#only("2-")[- This is where integrals come into play. 🧮]
#v(20pt)
#only("3-")[- We will learn how to find the integral of $f(x) = x^n$.]
#only("1")[
#voiceover("Imagine you are calculating the area under the curve of f of x equals x to the power of n. This is a common problem in calculus.")
]
#only("2")[
#voiceover("This is where integrals come into play. Integrals help us find the area under a curve.")
]
#only("3")[
#voiceover("In this video, we will learn how to find the integral of the power function f of x equals x to the power of n.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Integral of $x^n$]
#v(40pt)
#only("1-")[- The integral of $f(x) = x^n$ is $integral x^n dif x$.]
#v(20pt)
#only("2-")[- For $n != -1$, the integral is $(x^(n+1))/(n+1) + C$.]
#v(20pt)
#only("3-")[- $C$ is the constant of integration. 📜]
#only("1")[
#voiceover("The integral of the power function f of x equals x to the power of n is written as the integral of x to the power of n with respect to x.")
]
#only("2")[
#voiceover("For n not equal to negative one, the integral of x to the power of n is equal to x to the power of n plus one, divided by n plus one, plus a constant C.")
]
#only("3")[
#voiceover("The constant C is called the constant of integration. It accounts for any constant value that could be added to the function.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Explanation]
#v(40pt)
#only("1-")[- Consider $f(x) = x^2$.]
#v(20pt)
#only("2-")[- The integral is $integral x^2 dif x$.]
#v(20pt)
#only("3-")[- Applying the formula: $(x^(2+1))/(2+1) + C$.]
#v(20pt)
#only("4-")[- Simplifying: $(x^3)/3 + C$.]
#only("1")[
#voiceover("Let's consider an example where f of x equals x squared.")
]
#only("2")[
#voiceover("The integral of x squared with respect to x is written as the integral of x squared d x.")
]
#only("3")[
#voiceover("Applying the formula, we get x to the power of two plus one, divided by two plus one, plus the constant C.")
]
#only("4")[
#voiceover("Simplifying this, we get x cubed divided by three, plus the constant C.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Integral of $x^n$: $integral x^n dif x = (x^(n+1))/(n+1) + C$ for $n != -1$.]
#v(20pt)
#only("2-")[- $C$ is the constant of integration. 📜]
#only("1")[
#voiceover("In summary, the integral of x to the power of n with respect to x is equal to x to the power of n plus one, divided by n plus one, plus a constant C, for n not equal to negative one.")
]
#only("2")[
#voiceover("Remember, the constant C is the constant of integration, which accounts for any constant value that could be added to the function.")
]
]