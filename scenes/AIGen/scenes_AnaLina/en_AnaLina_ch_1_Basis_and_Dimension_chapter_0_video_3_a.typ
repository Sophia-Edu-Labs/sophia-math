#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Linear Independence]
#v(40pt)
#only("1-")[Which of the following sets of vectors is linearly independent?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) $mat(1; 0), mat(3; 0)$]#only("2-")[#text(fill:red)[a) $mat(1; 0), mat(3; 0)$]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) $mat(1; 1), mat(2; 2)$]#only("3-")[#text(fill:red)[b) $mat(1; 1), mat(2; 2)$]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) $mat(1; 2), mat(2; 4)$]#only("4-")[#text(fill:red)[c) $mat(1; 2), mat(2; 4)$]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned green, because it is correct.
#only("-4")[d) $mat(1; 1), mat(1; -1)$]#only("5-")[#text(fill:green)[d) $mat(1; 1), mat(1; -1)$]]
#only("1")[#voiceover("Not quite. Let's see the correct solution...")]
#only("2")[#voiceover("Option a) is not correct. The vectors $mat(1; 0)$ and $mat(3; 0)$ are linearly dependent, as $mat(3; 0) = 3 mat(1; 0)$.")]
#only("3")[#voiceover("Option b) is also not correct. The vectors $mat(1; 1)$ and $mat(2; 2)$ are linearly dependent, as $mat(2; 2) = 2 mat(1; 1)$.")]
#only("4")[#voiceover("Option c) is not correct either. The vectors $mat(1; 2)$ and $mat(2; 4)$ are linearly dependent, as $mat(2; 4) = 2 mat(1; 2)$.")]
#only("5")[#voiceover("Option d) is the correct answer. The vectors $mat(1; 1)$ and $mat(1; -1)$ are linearly independent, as no scalar multiple of one vector equals the other.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[To check for linear independence, we see if any vector is a scalar multiple of another. 🧐]
#v(40pt)
#only("2-")[Option a): $mat(3; 0) = 3 mat(1; 0)$ ❌]
#v(10pt)
#only("3-")[Option b): $mat(2; 2) = 2 mat(1; 1)$ ❌]
#v(10pt)
#only("4-")[Option c): $mat(2; 4) = 2 mat(1; 2)$ ❌]
#v(10pt)
#only("5-")[Option d): No scalar multiple exists ✅]
#only("1")[#voiceover("To check if a set of vectors is linearly independent, we see if any vector in the set is a scalar multiple of another vector.")]
#only("2")[#voiceover("In option a), the vector $mat(3; 0)$ is 3 times the vector $mat(1; 0)$, so they are linearly dependent.")]
#only("3")[#voiceover("Similarly in option b), the vector $mat(2; 2)$ is 2 times the vector $mat(1; 1)$, so they are also linearly dependent.")]
#only("4")[#voiceover("In option c), the vector $mat(2; 4)$ is 2 times the vector $mat(1; 2)$, making them linearly dependent as well.")]
#only("5")[#voiceover("However, in option d), no scalar multiple of $mat(1; 1)$ equals $mat(1; -1)$, and vice versa. Therefore, these vectors are linearly independent, making option d) the correct answer.")]
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

# Define the vectors
v1 = np.array([1, 1])  
v2 = np.array([1, -1])

# Create a plot
plt.figure(figsize=(6, 6))
plt.quiver(0, 0, v1[0], v1[1], angles='xy', scale_units='xy', scale=1, color='r', label='v1')
plt.quiver(0, 0, v2[0], v2[1], angles='xy', scale_units='xy', scale=1, color='b', label='v2')
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.xlim(-2, 2)
plt.ylim(-2, 2)
plt.legend()
plt.title('Linearly Independent Vectors')
plt.xlabel('x')
plt.ylabel('y')
plt.tight_layout()
plt.show()
```,
width: 360pt))
]
]
#only("1")[
#voiceover("Here's a visualization of the linearly independent vectors from option d). As you can see, the vectors $mat(1; 1)$ in red and $mat(1; -1)$ in blue are not scalar multiples of each other. They point in different directions and no amount of scaling one vector will result in the other.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- Vectors are linearly independent if no vector is a scalar multiple of another 📏]
#v(20pt)
#only("2-")[- Linearly dependent: $mat(1; 0), mat(3; 0)$ or $mat(1; 1), mat(2; 2)$ ❌]
#v(20pt)
#only("3-")[- Linearly independent: $mat(1; 1), mat(1; -1)$ ✅]
#v(20pt)
#only("4-")[- Visualizing the vectors can help understand their relationship 📈]
#only("1")[
#voiceover("The key takeaway is that vectors are linearly independent if no vector in the set is a scalar multiple of another.")
]
#only("2")[
#voiceover("Sets like $mat(1; 0), mat(3; 0)$ or $mat(1; 1), mat(2; 2)$ are linearly dependent, as one vector is a multiple of the other.")
]
#only("3")[
#voiceover("On the other hand, sets like $mat(1; 1), mat(1; -1)$ are linearly independent, as the vectors are not scalar multiples of each other.")
]
#only("4")[
#voiceover("Visualizing the vectors can be a helpful way to understand their relationship and check for linear independence.")
]
]