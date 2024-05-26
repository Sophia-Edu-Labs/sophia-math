#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Left-Hand Limit]
#v(40pt)
#only("1-")[- Find $lim_(x -> 2^-) (x^2)$]
#v(20pt)
#only("2-")[- Approach: Substitute values close to 2 from the left]
#only("1")[
#voiceover("Great job! That's the correct answer. Let's see how we can solve this step by step. We need to find the left-hand limit of the function f of x equals x squared as x approaches 2.")
]
#only("2")[
#voiceover("To find the left-hand limit, we'll substitute values that are close to 2 but slightly smaller.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Substitution]
#v(40pt)
#only("1-")[- Let $x = 1.9$]
#v(20pt)
#only("2-")[- $lim_(x -> 2^-) (x^2) = lim_(x -> 2^-) (1.9^2) = 3.61$]
#v(20pt)
#only("3-")[- Let $x = 1.99$]
#v(20pt)  
#only("4-")[- $lim_(x -> 2^-) (x^2) = lim_(x -> 2^-) (1.99^2) = 3.9601$]
#only("1")[
#voiceover("Let's start by substituting x equals 1.9, which is close to 2 but slightly smaller.")
]
#only("2")[
#voiceover("When we square 1.9, we get 3.61. This gives us an idea of what the limit might be approaching.")
]
#only("3")[
#voiceover("Now let's try an even closer value, say x equals 1.99.")
]
#only("4")[
#voiceover("Squaring 1.99 gives us 3.9601, which is even closer to what we expect the limit to be.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[The Limit]
#v(40pt)
#only("1-")[- As $x$ gets closer to 2 from the left, $x^2$ gets closer to 4]
#v(20pt)
#only("2-")[- $lim_(x -> 2^-) (x^2) = 4$]
#only("1")[
#voiceover("As we keep choosing values of x that are closer and closer to 2 from the left side, the corresponding values of x squared get closer and closer to 4.")
]
#only("2")[
#voiceover("Therefore, we can conclude that the left-hand limit of x squared as x approaches 2 is equal to 4.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 3, 100)
y = x**2

plt.figure(figsize=(6, 6))
plt.plot(x, y, 'b-', linewidth=2, label='$f(x) = x^2$')
plt.scatter(2, 4, color='red', s=50, label='Limit Point (2, 4)')

x_close = np.array([1.9, 1.99, 1.999])
y_close = x_close**2
plt.scatter(x_close, y_close, color='green', s=50, label='Approaching Points')

plt.axvline(x=2, color='gray', linestyle='--', linewidth=1)
plt.axhline(y=4, color='gray', linestyle='--', linewidth=1)

plt.grid(True)
plt.xlabel('x')
plt.ylabel('f(x)')
plt.title('Left-Hand Limit of $f(x) = x^2$ as $x \to 2$')
plt.legend()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visual representation of what we just did. The blue curve is the graph of f of x equals x squared. The red dot at (2, 4) represents the limit point we're approaching. The green dots are the points corresponding to the x values we substituted, getting closer and closer to the limit point from the left.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- Left-hand limit: Approach the limit from values smaller than the limit point 👈]
#v(20pt)
#only("2-")[- Substitute values close to the limit point to see the trend 🔍]
#v(20pt)  
#only("3-")[- The limit is the value the function approaches, not necessarily reaches 🎯]
#only("1")[
#voiceover("To summarize, when finding a left-hand limit, we approach the limit point from values that are smaller than it.")
]
#only("2")[
#voiceover("We substitute values that get closer and closer to the limit point to observe the trend.")
]
#only("3")[
#voiceover("Remember, the limit is the value the function approaches, not necessarily the value it actually reaches at the limit point.")
]
]