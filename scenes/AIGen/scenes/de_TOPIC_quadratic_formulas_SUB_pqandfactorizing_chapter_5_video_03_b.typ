#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Quadratische Gleichungen durch Faktorisierung lösen]
#v(40pt)
#only("1-")[Gleichung: $x^2 + 2x - 8 = 0$]
#v(20pt)
#only("2-")[Schritt 1: Bestimme $a$, $b$ und $c$]
#v(10pt)
#only("3-")[- $a = 1$]
#v(5pt)
#only("4-")[- $b = 2$]
#v(5pt)
#only("5-")[- $c = -8$]

#only("1")[#voiceover("Keine Sorge, das war ein guter Versuch! Lass uns die Lösung Schritt für Schritt gemeinsam durchgehen. Wir beginnen mit der Gleichung x Quadrat plus zwei x minus acht gleich null.")]
#only("2")[#voiceover("Der erste Schritt besteht darin, die Koeffizienten a, b und c in der Standardform ax Quadrat plus bx plus c gleich null zu identifizieren.")]
#only("3")[#voiceover("Hier ist a gleich eins,")]
#only("4")[#voiceover("b ist gleich zwei,")]
#only("5")[#voiceover("und c ist gleich minus acht.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Die Gleichung faktorisieren]
#v(40pt)
#only("1-")[Schritt 2: Finde zwei Zahlen, die:
- Multiplizieren zu $a \cdot c = 1 \cdot (-8) = -8$
- Addieren zu $b = 2$]
#v(20pt)
#only("2-")[Die Zahlen sind 4 und -2]
#v(20pt)
#only("3-")[Schritt 3: Schreibe den mittleren Term um]
#v(10pt)
#only("4-")[$x^2 + 4x - 2x - 8 = 0$]

#only("1")[#voiceover("Jetzt müssen wir die Gleichung faktorisieren. Dazu suchen wir zwei Zahlen, die multiplizieren zu a mal c, was minus acht ist, und addieren zu b, was zwei ist.")]
#only("2")[#voiceover("Diese Zahlen sind vier und minus zwei.")]
#only("3")[#voiceover("Als nächstes schreiben wir den mittleren Term mit diesen Zahlen um.")]
#only("4")[#voiceover("Das gibt uns x Quadrat plus vier x minus zwei x minus acht gleich null.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Terme gruppieren]
#v(40pt)
#only("1-")[Schritt 4: Gruppiere die Terme]
#v(10pt)
#only("2-")[$(x^2 + 4x) + (-2x - 8) = 0$]
#v(20pt)
#only("3-")[Schritt 5: Faktoriere den gemeinsamen Faktor in jeder Gruppe aus]
#v(10pt)
#only("4-")[$x(x + 4) - 2(x + 4) = 0$]

#only("1")[#voiceover("Jetzt gruppieren wir die Terme.")]
#only("2")[#voiceover("Das gibt uns x Quadrat plus vier x in Klammern, plus minus zwei x minus acht in Klammern, gleich null.")]
#only("3")[#voiceover("Als nächstes faktorisieren wir den gemeinsamen Faktor in jeder Gruppe aus.")]
#only("4")[#voiceover("Wir erhalten x mal x plus vier, minus zwei mal x plus vier, gleich null.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Endgültige Faktorisierung]
#v(40pt)
#only("1-")[Schritt 6: Faktoriere das gemeinsame Binom aus]
#v(10pt)
#only("2-")[$$(x + 4)(x - 2) = 0$$]
#v(20pt)
#only("3-")[Schritt 7: Verwende die Nullregel]
#v(10pt)
#only("4-")[Entweder $x + 4 = 0$ oder $x - 2 = 0$]
#v(10pt)
#only("5-")[Also, $x = -4$ oder $x = 2$]

#only("1")[#voiceover("Jetzt können wir das gemeinsame Binom ausfaktorisieren.")]
#only("2")[#voiceover("Das gibt uns x plus vier mal x minus zwei gleich null.")]
#only("3")[#voiceover("Schließlich verwenden wir die Nullregel, die besagt, dass wenn das Produkt der Faktoren null ist, einer der Faktoren null sein muss.")]
#only("4")[#voiceover("Also entweder x plus vier gleich null, oder x minus zwei gleich null.")]
#only("5")[#voiceover("Wenn wir diese lösen, erhalten wir x gleich minus vier oder x gleich zwei. Und da hast du es! Das sind die Lösungen unserer quadratischen Gleichung.")]
]