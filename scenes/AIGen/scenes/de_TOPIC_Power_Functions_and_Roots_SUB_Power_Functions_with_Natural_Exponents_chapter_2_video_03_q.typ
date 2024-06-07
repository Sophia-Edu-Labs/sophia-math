#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Symmetrie von $x^5$]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)
y = x**5

fig, ax = plt.subplots(figsize=(6, 6))
ax.plot(x, y, 'b-', linewidth=2, label='$f(x)=x^5$')
ax.plot(x, -y, 'r--', linewidth=2, label='$f(-x)=-x^5$')

ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_title('Graph von $f(x)=x^5$')
ax.grid(True)
ax.axhline(0, color='black', lw=0.5)
ax.axvline(0, color='black', lw=0.5)
ax.legend(loc='upper left')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
]
#v(40pt)
#only("1")[
#voiceover("Betrachte die Funktion f von x gleich x hoch 5.")
]
#v(20pt)
#only("2-")[
Ist $f(x) = x^5$ symmetrisch bezüglich:
]
#v(20pt)
#only("2")[
#voiceover("Ist diese Funktion symmetrisch bezüglich")
]
#only("3-")[
- Der y-Achse? 📈
]
#only("3")[
#voiceover("der y-Achse")
]
#only("4-")[  
- Dem Ursprung? 🎯
]
#only("4")[
#voiceover("oder dem Ursprung?")
]
#v(20pt)
#only("5")[
#voiceover("Denke darüber nach und wähle Deine Antwort!")
]
]#questionDef(
questionText: "Ist die Funktion $f(x) = x^5$ symmetrisch bezüglich der y-Achse oder dem Ursprung?",
answerOptions: ("Dem Ursprung", "Der y-Achse")
)