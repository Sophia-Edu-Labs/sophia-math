#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Spring Constant 🌿]
#v(40pt)
#only("1-")[- Measure of stiffness 💪]
#v(20pt)
#only("2-")[- Denoted by $k$]
#v(20pt)
#only("3-")[- Unit: $N/m$ (Newton per meter)]
#only("1")[
#voiceover("The spring constant is a measure of how stiff a spring is. It tells us how much force is needed to compress or stretch a spring by a certain distance.")
]
#only("2")[
#voiceover("We denote the spring constant by the letter k.")
]
#only("3")[
#voiceover("The unit of the spring constant is Newton per meter, which means the force in Newtons required to displace the spring by one meter.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Hooke's Law 📏]
#v(40pt)
#only("1-")[$ F = -k x $]
#v(20pt)
#only("2-")[- $F$: Force]
#v(10pt)
#only("3-")[- $k$: Spring constant]
#v(10pt)
#only("4-")[- $x$: Displacement from equilibrium]
#only("1")[
#voiceover("The spring constant is a key part of Hooke's Law, which states that the force F exerted by a spring is directly proportional to the displacement x from its equilibrium position, with the spring constant k as the proportionality constant.")
]
#only("2")[
#voiceover("In the equation, F represents the force,")
]
#only("3")[
#voiceover("k is the spring constant,")
]
#only("4")[
#voiceover("and x is the displacement of the spring from its resting position.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Implications 🤔]
#v(40pt)
#only("1-")[- Higher $k$ → stiffer spring]
#v(20pt)
#only("2-")[- Lower $k$ → more flexible spring]
#v(20pt)
#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

# Define spring constants and displacements
k1, k2 = 10, 50
x = np.linspace(0, 1, 100)

# Calculate forces
F1 = k1 * x
F2 = k2 * x

# Plot force-displacement curves
plt.figure(figsize=(6, 4))
plt.plot(x, F1, label=f'k = {k1} N/m')
plt.plot(x, F2, label=f'k = {k2} N/m')
plt.xlabel('Displacement (m)')
plt.ylabel('Force (N)')
plt.legend(title='Spring Constant')
plt.title('Force-Displacement Curves')
plt.grid(True)
plt.tight_layout()
plt.show()
```, width: 360pt))
]
]
#only("1")[
#voiceover("A higher spring constant means a stiffer spring. More force is needed to achieve the same displacement compared to a spring with a lower spring constant.")
]
#only("2")[
#voiceover("Conversely, a lower spring constant implies a more flexible or compliant spring. Less force is required to compress or stretch the spring by the same amount.")
]
#only("3")[
#voiceover("This graph shows force-displacement curves for two different spring constants. The steeper line corresponds to the higher spring constant, illustrating that more force is needed for the same displacement.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[- Spring constant ($k$) measures stiffness]
#v(20pt)
#only("2-")[- Relates force ($F$) and displacement ($x$) in Hooke's Law]
#v(20pt)
#only("3-")[- Higher $k$ → stiffer spring, lower $k$ → more flexible spring]
#only("1")[
#voiceover("In summary, the spring constant, denoted by k, is a measure of a spring's stiffness.")
]
#only("2")[
#voiceover("It relates the force F and displacement x in Hooke's Law: F equals negative k times x.")
]
#only("3")[
#voiceover("A higher spring constant means a stiffer spring, while a lower spring constant indicates a more flexible spring.")
]
]