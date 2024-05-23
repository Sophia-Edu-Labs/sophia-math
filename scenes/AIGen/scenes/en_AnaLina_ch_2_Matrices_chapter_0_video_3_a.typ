#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix Dimensions 🔢]
#v(40pt)
#only("1-")[Not quite. Let's look at the correct solution. 🎉]
#v(20pt)
#only("2-")[A 2x3 matrix has:]
#v(20pt)
#only("3-")[- 2 rows 📊]
#v(10pt)
#only("4-")[- 3 columns 📊]
#v(20pt)
#only("5-")[Total elements = $2 dot 3 = 6$ 🧮]
#only("1")[
#voiceover("Not quite. Let's look at the correct solution.")
]
#only("2")[
#voiceover("A 2 by 3 matrix has")
]
#only("3")[
#voiceover("2 rows and")
]
#only("4")[
#voiceover("3 columns.")
]
#only("5")[
#voiceover("To find the total number of elements, we multiply the number of rows by the number of columns. So in this case, it's 2 times 3, which equals 6.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization 👀]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a 2x3 matrix
matrix = np.array([[1, 2, 3], [4, 5, 6]])

# Create a figure and axis
fig, ax = plt.subplots()

# Display the matrix as an image
ax.imshow(matrix, cmap='viridis', interpolation='nearest')

# Add grid lines
ax.set_xticks(np.arange(-0.5, 3, 1), minor=True)
ax.set_yticks(np.arange(-0.5, 2, 1), minor=True)
ax.grid(which='minor', color='w', linestyle='-', linewidth=2)

# Remove ticks
ax.set_xticks([])
ax.set_yticks([])

# Add labels for rows and columns
for i in range(2):
    ax.text(-0.3, i, f'Row {i+1}', fontsize=14, ha='right', va='center')
for j in range(3):
    ax.text(j, -0.3, f'Col {j+1}', fontsize=14, ha='center', va='bottom')

# Add a title
ax.set_title('2x3 Matrix', fontsize=16)

# Show the plot
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visual representation of a 2 by 3 matrix. You can clearly see the 2 rows and 3 columns, with a total of 6 elements.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[- A 2x3 matrix has 2 rows and 3 columns]
#v(20pt)
#only("2-")[- Total elements = rows × columns]
#v(20pt)
#only("3-")[- For a 2x3 matrix: $2 dot 3 = 6$ elements]
#only("1")[
#voiceover("To summarize, a 2 by 3 matrix has 2 rows and 3 columns.")
]
#only("2")[
#voiceover("To find the total number of elements, we multiply the number of rows by the number of columns.")
]
#only("3")[
#voiceover("So for a 2 by 3 matrix, it's 2 times 3, which equals 6 elements in total.")
]
]