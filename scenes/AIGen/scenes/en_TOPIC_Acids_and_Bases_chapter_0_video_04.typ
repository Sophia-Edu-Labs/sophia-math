#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Acids and Bases Recap 🧪]
#v(40pt)
#only("1-")[- Acids donate protons (H+) 🍋]
#v(20pt)
#only("2-")[- Bases accept protons 🧼]
#only("1")[
#voiceover("Let's recap what we learned about acids and bases. Acids are substances that donate protons, which are positively charged hydrogen ions, in chemical reactions.")
]
#only("2")[
#voiceover("On the other hand, bases are substances that accept protons in chemical reactions.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Acid-Base Reaction ⚗]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a figure and axis
fig, ax = plt.subplots(figsize=(6, 4))

# Draw an arrow
ax.annotate('', xy=(0.8, 0.5), xytext=(0.2, 0.5), 
            arrowprops=dict(facecolor='black', shrink=0.05, width=1, headwidth=8, headlength=10))

# Add text labels
ax.text(0.1, 0.6, 'Acid', fontsize=14, color='red')
ax.text(0.1, 0.4, r'Donates H$^+$', fontsize=14, color='red')
ax.text(0.7, 0.6, 'Base', fontsize=14, color='blue')
ax.text(0.7, 0.4, r'Accepts H$^+$', fontsize=14, color='blue')

# Remove axes
ax.axis('off')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("In an acid-base reaction, the acid donates a proton to the base, which accepts it.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Examples 📝]
#v(40pt)
#only("1-")[- Hydrochloric acid (HCl) 🔬]
#v(20pt)
#only("2-")[$ "HCl" arrow "H"^+ + "Cl"^- $]
#v(20pt)
#only("3-")[- Sodium hydroxide (NaOH) 🧪]
#v(20pt)
#only("4-")[$ "NaOH" + "H"_2"O" arrow "Na"^+ + "OH"^- $]
#only("1")[
#voiceover("For example, hydrochloric acid, or HCl, is a strong acid.")
]
#only("2")[
#voiceover("When dissolved in water, it dissociates into a proton, H plus, and a chloride ion, Cl minus.")
]
#only("3")[
#voiceover("On the other hand, sodium hydroxide, or NaOH, is a strong base.")
]
#only("4")[
#voiceover("When dissolved in water, it dissociates into a sodium ion, Na plus, and a hydroxide ion, OH minus, which can accept a proton.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Takeaways 🔑]
#v(40pt)
#only("1-")[- Acids donate protons (H+) 🍋]
#v(20pt)
#only("2-")[- Bases accept protons 🧼]
#v(20pt)
#only("3-")[- Acid-base reactions involve proton transfer ⚗]
#only("1")[
#voiceover("To sum up, remember that acids donate protons, which are H plus ions.")
]
#only("2")[
#voiceover("Bases accept protons.")
]
#only("3")[
#voiceover("And acid-base reactions involve the transfer of protons from an acid to a base.")
]
]