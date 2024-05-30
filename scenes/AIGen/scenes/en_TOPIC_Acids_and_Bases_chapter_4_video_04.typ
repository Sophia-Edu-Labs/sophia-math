#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's quickly recap the pOH scale and its relationship with the pH scale.")
]
#text(size: 30pt, weight: "bold")[pOH Scale 📏]
// The title "pOH Scale" is shown on this slide
#v(40pt)
#only("2")[
#voiceover("The pOH scale measures the concentration of hydroxide ions, denoted as OH-, in a solution.")
]
#only("2-")[- Measures [OH-] concentration 🧪]
// The point "Measures [OH-] concentration" is shown from slide 2 onward
#v(40pt)
#only("3")[
#voiceover("The pOH scale and the pH scale are related by the equation: pH plus pOH equals 14.")
]
#only("3-")[- pH + pOH = 14 🧮]
// The equation "pH + pOH = 14" is shown from slide 3 onward
#v(40pt)
#only("4")[
#voiceover("This means that if you know the pH value of a solution, you can easily calculate its pOH value, and vice versa.")
]
#only("4-")[- Know pH ⇒ Calculate pOH 🔄]
// The point "Know pH ⇒ Calculate pOH" is shown from slide 4 onward
#v(40pt)
#only("5")[
#voiceover("For example, if a solution has a pH of 3, its pOH would be 14 minus 3, which equals 11.")
]
#only("5-")[- Example: pH = 3 ⇒ pOH = 14 - 3 = 11 📝]
// The example "pH = 3 ⇒ pOH = 14 - 3 = 11" is shown from slide 5 onward
]

#slide()[
#only("1")[
#voiceover("Let's visualize this relationship between pH and pOH on a scale.")
]
#text(size: 30pt, weight: "bold")[pH & pOH Scale 📈]
// The title "pH & pOH Scale" is shown on this slide
#v(40pt)
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

fig, ax = plt.subplots(figsize=(10, 2))

ax.set_xlim(0, 14)
ax.set_ylim(0, 1)

ax.set_xticks(np.arange(0, 15))
ax.set_yticks([])

ax.grid(True, which='major', linestyle='-', linewidth=1, color='black', alpha=0.7)

ax.text(0, 0.5, 'Acidic', ha='center', va='center', fontsize=14, color='red')
ax.text(14, 0.5, 'Basic', ha='center', va='center', fontsize=14, color='blue')
ax.text(7, 0.5, 'Neutral', ha='center', va='center', fontsize=14, color='green')

ax.text(3, 0.7, 'pH = 3', ha='center', va='center', fontsize=12)
ax.text(11, 0.7, 'pOH = 11', ha='center', va='center', fontsize=12)

ax.annotate('', xy=(3, 0.6), xytext=(11, 0.6), arrowprops=dict(arrowstyle='<->', color='purple'))

plt.show()
```,
width: 360pt),
)
]
]
]
// The figure shows a pH and pOH scale, with pH = 3 and pOH = 11 marked, and an arrow connecting them. The scale is labeled with "Acidic", "Neutral", and "Basic" regions. This figure is shown from slide 2 onward.
#only("2")[
#voiceover("Here we see the pH scale ranging from 0 to 14. The lower values represent acidic solutions, while the higher values represent basic solutions. The middle point, 7, represents a neutral solution.")
]
#only("3")[
#voiceover("Now, let's mark a point on the scale, say pH equals 3. This is in the acidic region.")
]
#only("4")[
#voiceover("To find the corresponding pOH value, we use the equation pH plus pOH equals 14. So, 3 plus pOH equals 14. Solving for pOH, we get pOH equals 11.")
]
#only("5")[
#voiceover("We can see this relationship visually on the scale. pH of 3 on the left corresponds to a pOH of 11 on the right, and they are connected by the arrow.")
]
]

#slide()[
#only("1")[
#voiceover("To sum up...")
]
#text(size: 30pt, weight: "bold")[Recap 🔍]
// The title "Recap" is shown on this slide
#v(40pt)
#only("2-")[- pOH scale measures [OH-] 📏]
// The point "pOH scale measures [OH-]" is shown from slide 2 onward
#v(40pt)
#only("3-")[- pH + pOH = 14 🧮]
// The equation "pH + pOH = 14" is shown from slide 3 onward
#v(40pt)
#only("4-")[- Know one, calculate the other 🔄]
// The point "Know one, calculate the other" is shown from slide 4 onward
#only("2")[
#voiceover("The pOH scale measures the concentration of hydroxide ions in a solution.")
]
#only("3")[
#voiceover("The pH scale and the pOH scale are related by the equation: pH plus pOH equals 14.")
]
#only("4")[
#voiceover("If you know the pH value, you can calculate the pOH value, and vice versa.")
]
]