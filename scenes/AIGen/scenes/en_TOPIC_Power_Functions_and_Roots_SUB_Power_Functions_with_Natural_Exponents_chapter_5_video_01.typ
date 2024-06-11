#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Introduction to Derivatives of Power Functions]
#v(40pt)
#only("1-")[- Imagine you are driving a car 🚗]
#v(20pt)
#only("2-")[- You want to know how your speed changes over time ⏱️]
#v(20pt)
#only("3-")[- This is where derivatives come in! 📉]
#only("1")[
#voiceover("Imagine you are driving a car. You want to know how your speed changes over time. This is where derivatives come in!")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Derivatives of Power Functions]
#v(40pt)
#only("1-")[- Consider the function $f(x) = x^n$]
#v(20pt)
#only("2-")[- The derivative is $f'(x) = n x^(n-1)$]
#v(20pt)
#only("3-")[- Let's break it down step by step 🧩]
#only("1")[
#voiceover("Consider the function f of x equals x to the power of n. The derivative of this function is f prime of x equals n times x to the power of n minus 1. Let's break it down step by step.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Explanation]
#v(40pt)
#only("1-")[- Start with $f(x) = x^n$]
#v(20pt)
#only("2-")[- Apply the power rule: $f'(x) = n x^(n-1)$]
#v(20pt)
#only("3-")[- Example: $f(x) = x^3$]
#v(20pt)
#only("4-")[- Derivative: $f'(x) = 3 x^2$]
#only("1")[
#voiceover("Start with the function f of x equals x to the power of n.")
]
#only("2")[
#voiceover("Apply the power rule: The derivative of x to the power of n is n times x to the power of n minus 1.")
]
#only("3")[
#voiceover("For example, if f of x equals x cubed, the derivative is f prime of x equals 3 times x squared.")
]
#only("4")[
#voiceover("So, the derivative of x cubed is 3 times x squared.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Derivative of $f(x) = x^n$ is $f'(x) = n x^(n-1)$]
#v(20pt)
#only("2-")[- Example: $f(x) = x^3$ → $f'(x) = 3 x^2$]
#v(20pt)
#only("3-")[- Derivatives help us understand how functions change 📈]
#only("1")[
#voiceover("In summary, the derivative of f of x equals x to the power of n is f prime of x equals n times x to the power of n minus 1.")
]
#only("2")[
#voiceover("For example, the derivative of x cubed is 3 times x squared.")
]
#only("3")[
#voiceover("Derivatives help us understand how functions change. They are a powerful tool in calculus.")
]
]