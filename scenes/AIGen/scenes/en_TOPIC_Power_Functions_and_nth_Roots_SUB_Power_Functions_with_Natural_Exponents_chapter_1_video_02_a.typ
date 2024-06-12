#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Evaluating Power Functions]
// The title "Evaluating Power Functions" is shown on this slide
#v(40pt)
#only("1-")[- $f(x) = x^3$]
#v(20pt)
#only("2-")[- Evaluate at $x = 2$]
#v(20pt)
#only("3-")[- $f(2) = 2^3$]
#v(20pt)
#only("4-")[- $f(2) = 8$]
// The function $f(x) = x^3$ is shown on slide 1, the evaluation point $x = 2$ is shown on slide 2, the substitution $f(2) = 2^3$ is shown on slide 3, and the final result $f(2) = 8$ is shown on slide 4
#only("1")[
#voiceover("Great job on answering the question correctly! Let's go through the solution step-by-step. We start with the function f of x equals x cubed.")
]
#only("2")[
#voiceover("Next, we need to evaluate this function at x equals 2.")
]
#only("3")[
#voiceover("We substitute 2 into the function, so we get f of 2 equals 2 cubed.")
]
#only("4")[
#voiceover("Finally, we calculate 2 cubed, which is 2 times 2 times 2, and that equals 8. So, f of 2 equals 8.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Graphical Representation]
// The title "Graphical Representation" is shown on this slide
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

# Define the function
def f(x):
    return x**3

# Generate x values
x = np.linspace(-3, 3, 400)
y = f(x)

# Create the plot
plt.figure(figsize=(6, 4))
plt.plot(x, y, label='$f(x) = x^3$', color='blue')
plt.scatter([2], [f(2)], color='red')  # Highlight the point (2, 8)
plt.text(2, f(2), '  (2, 8)', fontsize=12, verticalalignment='bottom')

# Add labels and legend
plt.xlabel('$x$')
plt.ylabel('$f(x)$')
plt.axhline(0, color='black',linewidth=0.5)
plt.axvline(0, color='black',linewidth=0.5)
plt.grid(color = 'gray', linestyle = '--', linewidth = 0.5)
plt.legend()

# Display the plot
plt.show()

```,
width: 360pt),
caption: [],
)
]
]
// The graph of $f(x) = x^3$ is shown with the point (2, 8) highlighted
#only("1")[
#voiceover("Let's also look at the graphical representation of the function f of x equals x cubed. Here, we have the graph of the function.")
]
#only("2")[
#voiceover("We can see that at x equals 2, the function value is 8. This point is highlighted in red on the graph.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
// The title "Summary" is shown on this slide
#v(40pt)
#only("1-")[- Function: $f(x) = x^3$]
#v(20pt)
#only("2-")[- Evaluation point: $x = 2$]
#v(20pt)
#only("3-")[- Result: $f(2) = 8$]
// The function $f(x) = x^3$ is shown on slide 1, the evaluation point $x = 2$ is shown on slide 2, and the final result $f(2) = 8$ is shown on slide 3
#only("1")[
#voiceover("To summarize, we started with the function f of x equals x cubed.")
]
#only("2")[
#voiceover("We evaluated this function at x equals 2.")
]
#only("3")[
#voiceover("And we found that f of 2 equals 8.")
]
]