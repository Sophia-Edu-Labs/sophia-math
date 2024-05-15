#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Lass uns die Kriterien zur Bestimmung der Konvergenz einer Zahlenfolge noch einmal zusammenfassen.")
]
#text(size: 30pt, weight: "bold")[Konvergenzkriterien 📊]
#v(40pt)
#only("2")[
#voiceover("Es gibt verschiedene Kriterien, die wir anwenden können, um herauszufinden, ob eine Zahlenfolge konvergiert oder nicht.")
]
#only("2-")[
- Verschiedene Kriterien zur Bestimmung der Konvergenz
]
#v(20pt)
#only("3")[
#voiceover("Ein häufig verwendetes Kriterium ist das Epsilon-Kriterium.")
]
#only("3-")[
- Epsilon-Kriterium $ε$ oft verwendet
]
#v(20pt)
#only("4")[
#voiceover("Das Epsilon-Kriterium besagt, dass eine Zahlenfolge a_n gegen einen Grenzwert a konvergiert, wenn für jedes noch so kleine positive Epsilon ein Index N existiert, sodass für alle n größer als N der Abstand zwischen a_n und a kleiner als Epsilon ist.")
]
#only("4-")[
$ lim_(n->∞) a_n = a <=> ∀ε>0 ∃N∈NN ∀n≥N: |a_n - a| < ε $
]
#v(20pt)
#only("5")[
#voiceover("Neben dem Epsilon-Kriterium gibt es noch andere Kriterien, wie zum Beispiel das Cauchy-Kriterium oder das Quotientenkriterium.")
]
#only("5-")[
- Andere Kriterien: Cauchy-Kriterium, Quotientenkriterium, ...
]
]

#slide()[
#only("1")[
#voiceover("Schauen wir uns ein Beispiel an, um das Epsilon-Kriterium zu veranschaulichen.")
]
#text(size: 30pt, weight: "bold")[Beispiel Epsilon-Kriterium]
#v(40pt)
#only("2")[
#voiceover("Betrachten wir die Zahlenfolge a_n gleich 1 durch n.")
]
#only("2-")[
$a_n = 1/n$
]
#v(20pt)
#only("3")[
#voiceover("Wir wollen zeigen, dass diese Folge gegen 0 konvergiert.")
]
#only("3-")[
Zu zeigen: $lim_(n->∞) a_n = 0$
]
#v(20pt)
#only("4")[
#voiceover("Wählen wir ein beliebiges Epsilon größer 0, zum Beispiel Epsilon gleich 0.01.")
]
#only("4-")[
Wähle $ε = 0.01$
]
#v(20pt)
#only("5")[
#voiceover("Nun müssen wir ein N finden, sodass für alle n größer als N gilt: Der Abstand zwischen 1 durch n und 0 ist kleiner als 0.01.")
]
#only("5-")[
Finde $N$, so dass $∀n≥N: |1/n - 0| < 0.01$
]
#v(20pt)
#only("6")[
#voiceover("Wir können N gleich 100 wählen. Denn für alle n größer als 100 ist 1 durch n kleiner als 0.01.")
]
#only("6-")[
Wähle $N = 100$, denn $∀n≥100: 1/n < 0.01$
]
#v(20pt)
#only("7")[
#voiceover("Damit haben wir gezeigt, dass die Folge 1 durch n das Epsilon-Kriterium für Epsilon gleich 0.01 erfüllt und somit gegen 0 konvergiert.")
]
#only("7-")[
$⇒ a_n = 1/n$ konvergiert gegen $0$. ✅
]
]

#slide()[
#only("1")[
#voiceover("Fassen wir die wichtigsten Punkte zu den Konvergenzkriterien noch einmal zusammen.")
]
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("2")[
#voiceover("Es gibt verschiedene Kriterien, um die Konvergenz einer Zahlenfolge zu bestimmen.")
]
#only("2-")[
- Verschiedene Konvergenzkriterien 📏
]
#v(20pt)
#only("3")[
#voiceover("Ein häufig verwendetes Kriterium ist das Epsilon-Kriterium.")
]
#only("3-")[
- Epsilon-Kriterium $ε$ oft verwendet
]
#v(20pt)
#only("4")[
#voiceover("Das Epsilon-Kriterium besagt, dass eine Folge gegen einen Grenzwert konvergiert, wenn für jedes noch so kleine Epsilon ab einem bestimmten Index der Abstand zwischen Folgenglied und Grenzwert kleiner als Epsilon ist.")
]
#only("4-")[
$ lim_(n->∞) a_n = a <=> ∀ε>0 ∃N∈NN ∀n≥N: |a_n - a| < ε $
]
#v(20pt)
#only("5")[
#voiceover("Neben dem Epsilon-Kriterium gibt es noch andere Kriterien wie das Cauchy-Kriterium oder das Quotientenkriterium, die je nach Situation angewendet werden können.")
]
#only("5-")[
- Andere Kriterien: Cauchy-Kriterium, Quotientenkriterium, ... 🔍
]
]