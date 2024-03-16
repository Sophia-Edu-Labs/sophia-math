#import "../sophiatheme.typ": *
// apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Bedingte Wahrscheinlichkeit]
#v(40pt)
#only("1-")[- #text(weight: "bold")[Definition:] Wahrscheinlichkeit von A, wenn B eingetreten ist]
#v(20pt)
#only("2-")[- #text(weight: "bold")[Notation:] $P(A|B)$]
#v(20pt)
#only("3-")[- #text(weight: "bold")[Formal:] $P(A|B) = (P(A sect B))/(P(B))$]
#only("1")[
#voiceover("Bedingte Wahrscheinlichkeit ist ein weiteres wichtiges Konzept in der Wahrscheinlichkeitstheorie. Sie beschreibt die Wahrscheinlichkeit, dass ein Ereignis A eintritt, unter der Bedingung, dass ein anderes Ereignis B bereits eingetreten ist. Also zum Beispiel: Was ist die Wahrscheinlichkeit eine sechs zu würfeln, gegeben dass wir eine gerade Zahl gewürfelt haben?")
]
#only("2")[
#voiceover("Wir schreiben die bedingte Wahrscheinlichkeit als P von A Strich B. Das wird gelesen als P von A gegeben B.")

]
#only("3")[
#voiceover("Formal berechnet sich die bedingte Wahrscheinlichkeit als die Wahrscheinlichkeit des Schnitts von A und B, geteilt durch die Wahrscheinlichkeit von B.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
#only("1-")[
- A: Gerade Zahl beim Würfeln
]
#only("2-")[
- $P(A) = 1/2$
]
#only("3-")[

- B: Zahl größer als 3
]
#only("4-")[
- $P(B) = 1/2$
]
#v(20pt)
#only("5-")[
- $P(A sect B) = 1/3$
]
#v(20pt)
#only("6-")[
$P(A|B) = (P(A sect B))/(P(B)) = (1/3)/(1/2) = 2/3$
]
#v(20pt)
#only("7-")[Wahrscheinlichkeit für gerade Zahl ist #text(weight: "bold")[höher], wenn wir wissen, dass es eine Zahl größer als 3 ist.]
#only("1")[
#voiceover("Nehmen wir wieder unseren fairen Würfel. Ereignis A sei nun, dass wir eine gerade Zahl würfeln.")
]
#only("2")[
#voiceover("Die Wahrscheinlichkeit, eine gerade Zahl zu würfeln, ist ein halb, da der Würfel drei gerade Zahlen hat.")
]
#only("3")[

#voiceover("Ereignis B sei, dass wir eine Zahl größer als 3 würfeln.")
]
#only("4")[
#voiceover("Die Wahrscheinlichkeit, eine Zahl größer als 3 zu würfeln, ist ein halb, da der Würfel drei Zahlen größer als 3 hat.")

]
#only("5")[
#voiceover("Die Wahrscheinlichkeit für den Schnitt von A und B, also eine gerade Zahl größer als 3, ist ein drittel. Denn von den drei Zahlen über 3 sind zwei gerade, nämlich die 4 und die 6.")
]
#only("6")[
#voiceover("Setzen wir das in unsere Formel ein, erhalten wir: ein drittel geteilt durch ein halb gleich zwei drittel.")
]
#only("7")[

#voiceover("Das bedeutet: Wenn wir bereits wissen, dass wir eine Zahl größer als 3 gewürfelt haben, ist die Wahrscheinlichkeit für eine gerade Zahl zwei drittel. Sie ist also höher als die unbedingte Wahrscheinlichkeit von ein halb. Die Information, dass B eingetreten ist, beeinflusst die Wahrscheinlichkeit von A - genau das beschreibt die bedingte Wahrscheinlichkeit.")
]
]