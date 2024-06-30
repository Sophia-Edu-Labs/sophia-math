#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Great job! You've correctly identified that 12/100 as a decimal is 0.12. Let's go through the solution step by step to understand why.")
]

#text(size: 30pt, weight: "bold")[Converting 12/100 to a Decimal]

#v(40pt)

#only("2-")[#text()[$12/100$]]
#only("2")[
#voiceover("We start with the fraction twelve over one hundred.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Method: Moving the Decimal Point]
#v(40pt)
#only("1-")[- For fractions over 100, move the decimal point two places left ⬅️]
#v(20pt)
#only("2-")[- This is equivalent to dividing by 100 ➗]
#only("1")[
#voiceover("For fractions over one hundred, we can use a quick method: move the decimal point two places to the left.")
]
#only("2")[
#voiceover("This is equivalent to dividing by one hundred, which is what we do when we convert a fraction over one hundred to a decimal.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting 12/100 Step by Step]
#v(40pt)
#only("1-")[1️⃣ Start with the numerator: 12]
#v(20pt)
#only("2-")[2️⃣ Add a decimal point: 12.]
#v(20pt)
#only("3-")[3️⃣ Move decimal point two places left: 0.12]
#only("1")[
#voiceover("Let's apply this method to our fraction. We start with the numerator, which is twelve.")
]
#only("2")[
#voiceover("First, we add a decimal point to the right of twelve.")
]
#only("3")[
#voiceover("Then, we move the decimal point two places to the left. This gives us zero point one two.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualizing the Process]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(

```
import matplotlib.pyplot as plt

fig, ax = plt.subplots(figsize=(8, 2))
ax.set_xlim(0, 3)
ax.set_ylim(0, 1)
ax.axis('off')

ax.text(0.5, 0.5, '12', fontsize=20)
ax.text(1.5, 0.5, '12.', fontsize=20)
ax.text(2.5, 0.5, '0.12', fontsize=20)

ax.annotate('', xy=(1.4, 0.7), xytext=(0.6, 0.7),
            arrowprops=dict(arrowstyle='->'))
ax.annotate('', xy=(2.4, 0.7), xytext=(1.6, 0.7),
            arrowprops=dict(arrowstyle='->'))

ax.text(1, 0.8, 'Add decimal', fontsize=12)
ax.text(2, 0.8, 'Move 2 places', fontsize=12)

plt.tight_layout()
plt.show()

```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visual representation of the process. We start with twelve, add a decimal point, and then move it two places to the left to get zero point one two.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Why This Works]
#v(40pt)
#only("1-")[- $12/100 = 12 × (1/100)$]
#v(20pt)
#only("2-")[- $1/100 = 0.01$ (two decimal places)]
#v(20pt)
#only("3-")[- So $12 × 0.01 = 0.12$]
#only("1")[
#voiceover("Let's understand why this method works. Twelve over one hundred is the same as twelve times one over one hundred.")
]
#only("2")[
#voiceover("One over one hundred is equal to zero point zero one, which has two decimal places.")
]
#only("3")[
#voiceover("So when we multiply twelve by zero point zero one, we get zero point one two.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- $12/100 = 0.12$ 🎉]
#v(20pt)
#only("2-")[- For fractions over 100, move decimal point 2 places left ⬅️]
#v(20pt)
#only("3-")[- This is equivalent to dividing by 100 ➗]
#only("1")[
#voiceover("To summarize, twelve over one hundred equals zero point one two.")
]
#only("2")[
#voiceover("Remember, for fractions over one hundred, you can quickly convert to a decimal by moving the decimal point two places to the left.")
]
#only("3")[
#voiceover("This method works because it's equivalent to dividing by one hundred. Great job on solving this problem!")
]
]