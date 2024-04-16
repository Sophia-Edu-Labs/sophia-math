#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme

#slide()[
#text(size: 30pt, weight: "bold")[Area Between Two Curves: Recap]
#only("1")[
#voiceover("Let's briefly recap the key steps in finding the area between two curves.")
]
#v(40pt)
#only("2-")[
- Set up the integral
]
#only("2")[
#voiceover("First, set up the integral by considering the boundaries and the order of the functions. The integral should be in the form: integral from a to b of f of x minus g of x with respect to x, where f of x is greater than or equal to g of x on the interval from a to b.")
]
#only("3-")[
- Evaluate the integral
]
#only("3")[
#voiceover("Next, evaluate the integral using appropriate integration techniques, such as the power rule, substitution, or integration by parts.")
]
#only("4-")[
- Interpret the results
]
#only("4")[
#voiceover("Finally, interpret the results in the context of the problem. The value of the definite integral represents the area between the two curves over the specified interval.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#only("1")[
#voiceover("Let's look at a quick example to illustrate these steps.")
]
#v(40pt)
#only("2-")[
Find the area between the curves $f(x)=x^2$ and $g(x)=x$ over the interval $[0,1]$.
]
#only("2")[
#voiceover("Suppose we want to find the area between the curves f of x equals x squared and g of x equals x over the interval from 0 to 1.")
]
#only("3-")[
1. Set up the integral:
$"Area" = integral_0^1 [x^2 - x] dif x$
]
#only("3")[
#voiceover("First, we set up the integral. The area equals the integral from 0 to 1 of x squared minus x with respect to x.")
]
#only("4-")[
2. Evaluate the integral:
$"Area" = [x^3/3 - x^2/2]_0^1 = (1/3 - 1/2) - (0 - 0) = 1/6$
]
#only("4")[
#voiceover("Next, we evaluate the integral using the power rule. We get x cubed over 3 minus x squared over 2, evaluated from 0 to 1. This simplifies to 1/6.")
]
#only("5-")[
3. Interpret the results:
The area between the curves $f(x)=x^2$ and $g(x)=x$ over the interval $[0,1]$ is $1/6$ square units.
]
#only("5")[
#voiceover("Finally, we interpret the results. The area between the curves f of x equals x squared and g of x equals x over the interval from 0 to 1 is 1/6 square units.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#only("1")[
#voiceover("To summarize, remember these key points when finding the area between two curves:")
]
#v(40pt)
#only("2-")[
- Set up the integral considering the boundaries and order of the functions 📐
]
#only("3-")[
- Evaluate the integral using appropriate integration techniques 🧮
]
#only("4-")[
- Interpret the results in the context of the problem 🤔
]
#only("2")[
#voiceover("First, set up the integral by subtracting the lower function from the upper function and integrating over the specified interval.")
]
#only("3")[
#voiceover("Next, evaluate the integral using integration techniques like the power rule, substitution, or integration by parts.")
]
#only("4")[
  #voiceover("Finally, interpret the results to understand the area between the two curves in the context of the problem. With these steps in mind, you'll be well-equipped to tackle problems involving the area between two curves. Happy calculating! 😄")
]
]