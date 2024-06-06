#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Lösen von Gleichungen mit rationalen Exponenten 🧮]

#v(40pt)

#only("1-")[- Isoliere den Term mit dem Exponenten 🎯]
#only("2-")[- Erhebe beide Seiten auf den Kehrwert des Exponenten ⬆]

#v(40pt)

#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 10, 100)
y = x**(2/3)

plt.figure(figsize=(6, 4))
plt.plot(x, y, linewidth=2, label="$y = x^{2/3}$")
plt.xlabel("x")
plt.ylabel("y")
plt.grid(True)
plt.legend(fontsize=12)
plt.title("Graph von $y = x^{2/3}$")
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
]

#only("1")[
#voiceover("Um Gleichungen mit rationalen Exponenten zu lösen, ist der erste Schritt, den Term mit dem Exponenten auf einer Seite der Gleichung zu isolieren.")
]

#only("2")[
#voiceover("Sobald der Term isoliert ist, erheben wir beide Seiten der Gleichung auf den Kehrwert des Exponenten. Dies hebt den rationalen Exponenten auf und ermöglicht es uns, die Variable zu lösen.")
]

#only("3")[
#voiceover("Betrachten wir zum Beispiel die Gleichung y gleich x hoch zwei Drittel. Um x zu lösen, würden wir beide Seiten auf die Potenz drei Halbe, den Kehrwert von zwei Drittel, erheben. Dies würde uns x gleich y hoch drei Halbe geben.")
]

]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: Lösen von $x^{1/2} = 4$ 🌟]

#v(40pt)

#only("1-")[Schritt 1: Der Term mit dem Exponenten, $x^{1/2}$, ist bereits isoliert.]

#v(20pt)

#only("2-")[Schritt 2: Erhebe beide Seiten auf den Kehrwert des Exponenten (1/2):]
#only("2-")[$ (x^{1/2})^2 = 4^2 $]

#v(20pt)

#only("3-")[Schritt 3: Vereinfache:]
#only("3-")[$ x = 16 $]

#only("1")[
#voiceover("Lass uns die Gleichung x hoch ein Halb gleich vier lösen. In diesem Fall ist der Term mit dem Exponenten bereits auf der linken Seite isoliert.")
]

#only("2")[
#voiceover("Wir erheben beide Seiten auf die Potenz zwei, was der Kehrwert von ein Halb ist. Dies gibt uns x hoch ein Halb, alles zum Quadrat, gleich vier zum Quadrat.")
]

#only("3")[
#voiceover("Vereinfacht ergibt das x gleich sechzehn. Also ist die Lösung der Gleichung x hoch ein Halb gleich vier x gleich sechzehn.")
]

]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung 🎬]

#v(40pt)

#only("1-")[1. Isoliere den Term mit dem rationalen Exponenten 🎯]
#only("2-")[2. Erhebe beide Seiten auf den Kehrwert des Exponenten ⬆]
#only("3-")[3. Vereinfache die Gleichung, um die Variable zu lösen ✨]

#only("1")[
#voiceover("Zusammengefasst: Beim Lösen von Gleichungen mit rationalen Exponenten isolierst Du zuerst den Term mit dem rationalen Exponenten auf einer Seite der Gleichung.")
]

#only("2")[
#voiceover("Dann erhebst Du beide Seiten der Gleichung auf den Kehrwert des Exponenten. Dies eliminiert den rationalen Exponenten.")
]

#only("3")[
#voiceover("Schließlich vereinfachst Du die Gleichung, um die Variable zu lösen. Mit diesen Schritten kannst Du sicher Gleichungen mit rationalen Exponenten lösen! 🌟")
]

]