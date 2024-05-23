#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's recap how to apply the Gaussian Algorithm to solve a linear system of equations.")
]
#text(size: 30pt, weight: "bold")[Gaussian Algorithm Recap]
// The title "Gaussian Algorithm Recap" is shown on this slide
#v(40pt)
#only("2")[
#voiceover("First, we represent the linear system as an augmented matrix. For example, the system $x + y = 2$, $2x - y = 3$ becomes the matrix mat(1, 1, 2; 2, -1, 3).")
]
#only("2-")[
- Represent the linear system as an augmented matrix
]
// The bullet point is shown from slide 2 onward
#v(20pt)
#only("3")[
#voiceover("Next, we transform the augmented matrix into an upper triangular form using elementary row operations. In this case, we get mat(1, 1, 2; 0, -3, -1).")
]
#only("3-")[
- Transform the augmented matrix into an upper triangular form
]
// The bullet point is shown from slide 3 onward
#v(20pt)
#only("4")[
#voiceover("Finally, we perform back substitution to find the values of the variables. From the upper triangular matrix, we get $y = 1/3$ and $x = 5/3$.")
]
#only("4-")[
- Perform back substitution to find the solution
]
// The bullet point is shown from slide 4 onward
]

#slide()[
#only("1")[
#voiceover("Let's visualize this process with a flowchart.")
]
#text(size: 30pt, weight: "bold")[Gaussian Algorithm Flowchart]
// The title "Gaussian Algorithm Flowchart" is shown on this slide
#v(40pt)
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

fig, ax = plt.subplots(figsize=(8, 6))

# Nodes
ax.text(0.5, 0.9, "Linear System", ha='center', fontsize=14, bbox=dict(facecolor='lightblue', edgecolor='black', boxstyle='round,pad=0.5'))
ax.text(0.5, 0.6, "Augmented Matrix", ha='center', fontsize=14, bbox=dict(facecolor='lightgreen', edgecolor='black', boxstyle='round,pad=0.5'))
ax.text(0.5, 0.3, "Upper Triangular Form", ha='center', fontsize=14, bbox=dict(facecolor='lightyellow', edgecolor='black', boxstyle='round,pad=0.5'))
ax.text(0.5, 0.0, "Solution", ha='center', fontsize=14, bbox=dict(facecolor='lightpink', edgecolor='black', boxstyle='round,pad=0.5'))

# Arrows
ax.annotate('', xy=(0.5, 0.54), xytext=(0.5, 0.84), arrowprops=dict(facecolor='black', shrink=0.05, width=1, headwidth=8), ha='center')
ax.annotate('', xy=(0.5, 0.24), xytext=(0.5, 0.54), arrowprops=dict(facecolor='black', shrink=0.05, width=1, headwidth=8), ha='center')
ax.annotate('', xy=(0.5, -0.06), xytext=(0.5, 0.24), arrowprops=dict(facecolor='black', shrink=0.05, width=1, headwidth=8), ha='center')

# Labels
ax.text(0.52, 0.75, "Represent", ha='left', fontsize=12, color='black', rotation=90)
ax.text(0.52, 0.45, "Transform", ha='left', fontsize=12, color='black', rotation=90)
ax.text(0.52, 0.15, "Back Substitution", ha='left', fontsize=12, color='black', rotation=90)

ax.set_axis_off()
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
]
// The figure shows a flowchart of the Gaussian Algorithm process, with nodes for the linear system, augmented matrix, upper triangular form, and solution, connected by arrows labeled with the steps. This figure is shown from slide 2 onward.
]

#slide()[
#only("1")[
#voiceover("In summary, the Gaussian Algorithm is a powerful method for solving linear systems of equations.")
]
#text(size: 30pt, weight: "bold")[Key Points]
// The title "Key Points" is shown on this slide
#v(40pt)
#only("2")[
#voiceover("We start by representing the system as an augmented matrix.")
]
#only("2-")[
1️⃣ Represent the system as an augmented matrix
]
// The first key point is shown from slide 2 onward
#v(20pt)
#only("3")[
#voiceover("Then, we transform the matrix into upper triangular form using elementary row operations.")
]
#only("3-")[
2️⃣ Transform into upper triangular form
]
// The second key point is shown from slide 3 onward
#v(20pt)
#only("4")[
#voiceover("Finally, we perform back substitution to find the values of the variables and solve the system.")
]
#only("4-")[
3️⃣ Perform back substitution to find the solution
]
// The third key point is shown from slide 4 onward
#v(20pt)
#only("5")[
#voiceover("By following these steps, we can efficiently solve any linear system of equations. 📚✨")
]
]