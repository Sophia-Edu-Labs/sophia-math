#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Inverse Functions in Graphs]
// The title "Inverse Functions in Graphs" is shown on this slide
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-5, 5, 100)
y1 = np.exp(x)
y2 = np.log(x)

fig, ax = plt.subplots(figsize=(6, 6))
ax.plot(x, y1, color='blue', label='$f(x) = e^x$')
ax.plot(x, y2, color='red', label='$f^(-1)(x) = ln(x)$')
ax.plot(x, x, color='green', linestyle='--', label='$y = x$')
ax.legend()
ax.grid(True)
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_title('Inverse Functions')
ax.set_xlim(-5, 5)
ax.set_ylim(-5, 5)

plt.show()
```,
width: 360pt),
)
]
]
// The graph showing the function, its inverse, and the line y=x is shown from slide 1 onward
#only("2-")[- $f(x) = e^x$ and $f^(-1)(x) = ln(x)$ are reflections over $y = x$]
// The point about the function and its inverse being reflections over y=x is shown from slide 2 onward
#only("3-")[- If $(a, b)$ is on $f(x)$, then $(b, a)$ is on $f^(-1)(x)$]
// The point about the coordinates being swapped for the inverse function is shown from slide 3 onward
#only("1")[
#voiceover("Let's look at how inverse functions appear in graphs. Here we see the exponential function f of x equals e to the power of x in blue, and its inverse, the natural logarithm function f inverse of x equals ln of x in red.")
]
#only("2")[
#voiceover("Notice how these functions are reflections of each other over the line y equals x, shown in green. This is a key visual property of inverse functions.")
]
#only("3")[
#voiceover("Another way to think about this: If the point a comma b lies on the graph of f of x, then the point b comma a lies on the graph of f inverse of x. The x and y coordinates are swapped for the inverse function.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Inverse Functions in Tables]
// The title "Inverse Functions in Tables" is shown on this slide
#v(40pt)
#only("1-")[
$ f(x) = 
x | -2 | -1 | 0 | 1 | 2 |
f(x) | 4 | 1 | 0 | 1 | 4 |
$
// The table for f(x) is shown from slide 1 onward
]
#v(20pt)
#only("2-")[
$ f^(-1)(x) = 
x | 0 | 1 | 4 |
f^(-1)(x) | 0 | -1, 1 | -2, 2 |
$
// The table for the inverse of f(x) is shown from slide 2 onward
]
#only("3-")[- For each $(x, f(x))$ in $f(x)$, there is $(f(x), x)$ in $f^(-1)(x)$]
// The point about the x and f(x) values being swapped in the inverse function's table is shown from slide 3 onward
#only("4-")[- If $f(x)$ is not one-to-one, $f^(-1)(x)$ is a relation, not a function]
// The point about the inverse being a relation if f(x) is not one-to-one is shown from slide 4 onward
#only("1")[
#voiceover("Now let's consider inverse functions in tables. Here's a table for a function f of x. It shows the x values and their corresponding f of x values.")
]
#only("2")[
#voiceover("If we want to create a table for the inverse function f inverse of x, we swap the x and f of x values. The f of x values from the original function become the x values for the inverse function, and the x values become the f inverse of x values.")
]
#only("3")[
#voiceover("So for each x comma f of x pair in the table of f of x, there is a corresponding f of x comma x pair in the table of f inverse of x.")
]
#only("4")[
#voiceover("One thing to note: If f of x is not one-to-one, meaning it has repeated f of x values, then f inverse of x is a relation, not a function. It would have multiple x values for some f inverse of x values, as we see here.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
// The title "Summary" is shown on this slide
#v(40pt)
#only("1-")[- In graphs, inverse functions are reflections over $y = x$]
// The summary point about inverse functions in graphs is shown from slide 1 onward
#v(20pt)
#only("2-")[- In tables, $(x, f(x))$ in $f(x)$ becomes $(f(x), x)$ in $f^(-1)(x)$]
// The summary point about inverse functions in tables is shown from slide 2 onward
#v(20pt)
#only("3-")[- If $f(x)$ is not one-to-one, $f^(-1)(x)$ is a relation, not a function]
// The summary point about the inverse being a relation if f(x) is not one-to-one is shown from slide 3 onward
#only("1")[
#voiceover("To summarize, in graphs, inverse functions appear as reflections of each other over the line y equals x.")
]
#only("2")[
#voiceover("In tables, each x comma f of x pair in the table of f of x becomes an f of x comma x pair in the table of f inverse of x.")
]
#only("3")[
#voiceover("Finally, remember that if f of x is not one-to-one, then f inverse of x is a relation, not a function, because it would have multiple x values for some f inverse of x values.")
]
]