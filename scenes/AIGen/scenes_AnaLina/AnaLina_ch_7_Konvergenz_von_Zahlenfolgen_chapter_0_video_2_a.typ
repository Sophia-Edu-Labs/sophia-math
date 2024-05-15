#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Was ist eine Zahlenfolge?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct.
#only("-1")[a) Eine Liste von Zahlen]#only("2-")[#text(fill:green)[a) Eine Liste von Zahlen]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) Eine Funktion]#only("3-")[#text(fill:red)[b) Eine Funktion]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Eine Matrix]#only("4-")[#text(fill:red)[c) Eine Matrix]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Ein Vektor]#only("5-")[#text(fill:red)[d) Ein Vektor]]

#only("1")[#voiceover("Das ist richtig, super gemacht! 🎉")]
#only("2")[#voiceover("a) Eine Liste von Zahlen ist die korrekte Antwort. Eine Zahlenfolge ist in der Tat eine geordnete Liste von Zahlen.")]
#only("3")[#voiceover("b) Eine Funktion ist nicht korrekt. Obwohl eine Funktion verwendet werden kann, um eine Folge zu generieren, ist eine Folge selbst keine Funktion.")]
#only("4")[#voiceover("c) Eine Matrix ist ebenfalls nicht korrekt. Eine Matrix ist eine rechteckige Anordnung von Zahlen, aber keine geordnete Liste.")]
#only("5")[#voiceover("Und d) Ein Vektor ist auch nicht richtig. Ein Vektor ist zwar eine geordnete Liste, aber er hat zusätzliche Eigenschaften wie Richtung und Größe, die eine Folge nicht hat.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Definition]
#v(40pt)
#only("1-")[Eine Zahlenfolge ist eine geordnete Liste von Zahlen.]
#v(20pt)
#only("2-")[Beispiel: $a_n = (1, 2, 3, 4, 5, ...)$]
#v(20pt)
#only("3-")[- $a_n$ ist die Notation für das $n$-te Glied der Folge]
#v(10pt)
#only("4-")[- $a_1 = 1$, $a_2 = 2$, $a_3 = 3$, und so weiter]

#only("1")[#voiceover("Lass uns genauer definieren, was eine Zahlenfolge ist. Eine Zahlenfolge ist einfach eine geordnete Liste von Zahlen.")]
#only("2")[#voiceover("Hier ist ein Beispiel für eine Zahlenfolge: a sub n gleich Klammer auf 1, 2, 3, 4, 5, und so weiter Klammer zu.")]
#only("3")[#voiceover("a sub n ist die Notation für das n-te Glied der Folge. Das bedeutet, a sub n gibt die Zahl an der n-ten Stelle in der Folge an.")]
#only("4")[#voiceover("In diesem Beispiel ist a sub 1 gleich 1, a sub 2 gleich 2, a sub 3 gleich 3, und so weiter.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Eigenschaften]
#v(40pt)
#only("1-")[- Folgen können endlich oder unendlich sein 🔚]
#v(20pt)
#only("2-")[- Folgen können wachsend, fallend oder oszillierend sein 📈📉]
#v(20pt)
#only("3-")[- Folgen können durch eine Formel oder rekursiv definiert werden 🧮]
#v(20pt)
#only("4-")[- Folgen haben viele Anwendungen in Mathematik, Physik, Informatik, etc. 🌍]

#only("1")[#voiceover("Folgen haben einige interessante Eigenschaften. Sie können endlich oder unendlich sein, je nachdem, ob sie eine begrenzte oder unbegrenzte Anzahl von Gliedern haben.")]
#only("2")[#voiceover("Folgen können auch wachsend sein, wenn jedes Glied größer als das vorherige ist, fallend, wenn jedes Glied kleiner als das vorherige ist, oder oszillierend, wenn sie zwischen größeren und kleineren Werten schwanken.")]
#only("3")[#voiceover("Folgen können durch eine explizite Formel definiert werden, wie zum Beispiel a sub n gleich n Quadrat, oder rekursiv, wobei jedes Glied durch die vorherigen Glieder definiert wird.")]
#only("4")[#voiceover("Folgen haben viele Anwendungen in verschiedenen Bereichen wie Mathematik, Physik, Informatik und mehr. Sie sind ein grundlegendes Konzept, das in vielen fortgeschrittenen Themen verwendet wird.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Zahlenfolge = geordnete Liste von Zahlen 📜]
#v(20pt)
#only("2-")[- Notation: $a_n$ für das $n$-te Glied 🔢]
#v(20pt)
#only("3-")[- Eigenschaften: endlich/unendlich, wachsend/fallend/oszillierend 📊]
#v(20pt)
#only("4-")[- Viele Anwendungen in verschiedenen Bereichen 🎓]

#only("1")[#voiceover("Lass uns zusammenfassen. Eine Zahlenfolge ist eine geordnete Liste von Zahlen.")]
#only("2")[#voiceover("Wir verwenden die Notation a sub n, um das n-te Glied der Folge zu bezeichnen.")]
#only("3")[#voiceover("Folgen können endlich oder unendlich sein und verschiedene Verhaltensmuster wie Wachstum, Abnahme oder Oszillation aufweisen.")]
#only("4")[#voiceover("Und schließlich haben Folgen viele wichtige Anwendungen in verschiedenen Bereichen der Mathematik und darüber hinaus.")]
]