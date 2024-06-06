#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Great Job! 🎉]
#v(40pt)
#only("1-")[The correct answer is: ]
#v(20pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct. 
#only("-1")[a) 2i]#only("2-")[#text(fill:green)[a) 2i]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) 4i]#only("3-")[#text(fill:red)[b) 4i]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) 2]#only("4-")[#text(fill:red)[c) 2]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) 4]#only("5-")[#text(fill:red)[d) 4]]

#only("1")[#voiceover("That's absolutely correct! Great job. Let's see why a) 2i is the right answer.")]
#only("2")[#voiceover("The fourth root of negative 16 is indeed 2i.")]
#only("3")[#voiceover("4i is incorrect because taking the fourth root involves finding a number that, when raised to the fourth power, gives negative 16. 4i to the fourth power is 256, not negative 16.")]
#only("4")[#voiceover("2 is also incorrect. When you raise 2 to the fourth power, you get 16, not negative 16.")]
#only("5")[#voiceover("And 4 is incorrect for the same reason. 4 to the fourth power is 256, not negative 16.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[To find $root(4, -16)$:]
#v(20pt)
#only("2-")[1. Recognize that the fourth root of a negative number will be a complex number 🧮]
#v(20pt)
#only("3-")[2. Find the fourth root of the absolute value: $root(4, 16) = 2$ ✅]
#v(20pt)
#only("4-")[3. Multiply by $i$: $2 dot i$ 🎯]
#v(20pt)
#only("5-")[4. Therefore, $root(4, -16) = 2i$ 🌟]

#only("1")[#voiceover("Here's how we can solve this step-by-step:")]
#only("2")[#voiceover("First, we need to recognize that the fourth root of a negative number will result in a complex number.")]
#only("3")[#voiceover("Next, we find the fourth root of the absolute value of negative 16, which is 16. The fourth root of 16 is 2.")]
#only("4")[#voiceover("Now, we multiply this result by i to account for the negative sign under the root.")]
#only("5")[#voiceover("And there we have it! The fourth root of negative 16 is equal to 2i.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization 📊]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define the complex number
z = 2j

# Create a figure and a 3D axis
fig = plt.figure(figsize=(6, 6))
ax = fig.add_subplot(111, projection='3d')

# Plot the complex number
ax.scatter([z.real], [z.imag], [0], color='blue', s=100)

# Set the labels and title
ax.set_xlabel('Real')
ax.set_ylabel('Imaginary')
ax.set_zlabel('Z')
ax.set_title('Visualization of 2i')

# Set the limits and aspect ratio
ax.set_xlim(-3, 3)
ax.set_ylim(-3, 3)
ax.set_zlim(-1, 1)
ax.set_box_aspect((3, 3, 0.5))

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)

#only("1")[#voiceover("Here's a visualization of the complex number 2i in the complex plane.")]
#only("2")[#voiceover("The real part is 0 and the imaginary part is 2.")]
#only("3")[#voiceover("So 2i is represented by a point on the imaginary axis, two units above the origin.")]
#only("4")[#voiceover("This is a great way to visualize complex numbers and understand their real and imaginary components.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)
#only("1-")[- The fourth root of a negative number is a complex number 🧩]
#v(20pt)
#only("2-")[- To find it, take the fourth root of the absolute value and multiply by $i$ 🎲]
#v(20pt)
#only("3-")[- In this case, $root(4, -16) = 2i$ 🎯]
#v(20pt)
#only("4-")[- Visualizing complex numbers helps understand their real and imaginary parts 📈]

#only("1")[#voiceover("Let's recap the key points:")]
#only("2")[#voiceover("When finding the fourth root of a negative number, we'll always end up with a complex number. To find it, we take the fourth root of the absolute value and then multiply the result by i.")]
#only("3")[#voiceover("In this specific case, the fourth root of negative 16 equals 2i.")]
#only("4")[#voiceover("And finally, visualizing complex numbers in the complex plane is a great way to understand their real and imaginary components.")]
]