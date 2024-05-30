#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Acids and Bases 🧪]
#v(40pt)
#only("1-")[- Acids donate protons (H⁺) 🎁]
#v(20pt)
#only("2-")[- Bases accept protons 🛍️]
#only("1")[
#voiceover("In chemistry, acids and bases are two important classes of substances that have distinct properties. Acids are substances that donate protons, which are positively charged hydrogen ions denoted as H⁺.")
]
#only("2")[
#voiceover("On the other hand, bases are substances that accept protons. In other words, they receive the protons that acids donate.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Acid-Base Reaction 🔄]
#v(40pt)
#only("1-")[#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

fig, ax = plt.subplots(figsize=(6, 4))

ax.arrow(-0.5, 0, 0.5, 0, head_width=0.1, head_length=0.1, fc='k', ec='k')
ax.text(-0.4, 0.1, 'H⁺', fontsize=12)
ax.text(-1.2, -0.2, 'Acid', fontsize=12)
ax.text(0.8, -0.2, 'Base', fontsize=12)

ax.set_xlim(-2, 2)
ax.set_ylim(-1, 1)
ax.set_axis_off()

plt.show()
```,
width: 360pt),
)
]
]
]
#only("1")[
#voiceover("When an acid and a base react, the acid donates a proton to the base. This process is called an acid-base reaction.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Examples 📝]
#v(40pt)
#only("1-")[- Acid: Hydrochloric acid (HCl) → H⁺ + Cl⁻]
#v(20pt)
#only("2-")[- Base: Sodium hydroxide (NaOH) → Na⁺ + OH⁻]
#only("1")[
#voiceover("A common example of an acid is hydrochloric acid, or HCl. When dissolved in water, it dissociates into a proton, H⁺, and a chloride ion, Cl⁻.")
]
#only("2")[
#voiceover("Sodium hydroxide, or NaOH, is a typical example of a base. In aqueous solution, it separates into a sodium ion, Na⁺, and a hydroxide ion, OH⁻, which can accept a proton.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 🎯]
#v(40pt)
#only("1-")[- Acids donate protons (H⁺) 🎁]
#v(20pt)
#only("2-")[- Bases accept protons 🛍️]
#v(20pt)
#only("3-")[- Acid-base reactions involve proton transfer 🔄]
#only("1")[
#voiceover("To summarize, acids are proton donors.")
]
#only("2")[
#voiceover("Bases are proton acceptors.")
]
#only("3")[
#voiceover("And in an acid-base reaction, the acid transfers a proton to the base. Understanding these fundamental concepts is crucial for studying chemistry and many biological processes.")
]
]