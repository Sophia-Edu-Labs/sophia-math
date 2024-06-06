#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Großartige Arbeit! 🌟]
#v(40pt)
#only("1-")[Das ist die richtige Antwort! Lass uns Schritt für Schritt sehen, wie wir das lösen können. 📝]
#only("1")[
#voiceover("Leider ist das nicht korrekt. Lass uns gemeinsam Schritt für Schritt die richtige Lösung durchgehen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Isolieren]
#v(40pt)
#only("1-")[Wir haben: $x^(2/3) = 9$]
#v(20pt)
#only("2-")[Der Term mit dem Exponenten ist bereits isoliert. ✅]
#only("1")[
#voiceover("Wir beginnen mit der Gleichung x hoch 2/3 gleich 9.")
]
#only("2")[
#voiceover("Wir sehen, dass der Term mit dem Exponenten, x hoch 2/3, bereits auf einer Seite der Gleichung isoliert ist. Also können wir zum nächsten Schritt übergehen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Reziprok]
#v(40pt)
#only("1-")[Um den Exponenten zu entfernen, erheben wir beide Seiten auf den Kehrwert des Exponenten.]
#v(20pt)
#only("2-")[Der Kehrwert von $2/3$ ist $3/2$. 🔄]
#v(20pt)
#only("3-")[$(x^(2/3))^(3/2) = 9^(3/2)$]
#only("1")[
#voiceover("Um den Exponenten zu entfernen, erheben wir beide Seiten der Gleichung auf den Kehrwert des Exponenten.")
]
#only("2")[
#voiceover("Der Kehrwert von 2/3 ist 3/2.")
]
#only("3")[
#voiceover("Also erheben wir beide Seiten auf die Potenz 3/2. Auf der linken Seite haben wir x hoch 2/3, alles hoch 3/2. Auf der rechten Seite haben wir 9 hoch 3/2.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 3: Vereinfachen]
#v(40pt)
#only("1-")[Mit der Potenzregel gilt: $(x^(2/3))^(3/2) = x^((2/3) dot (3/2)) = x^1 = x$. 📏]
#v(20pt)
#only("2-")[Auf der rechten Seite gilt: $9^(3/2) = (9^(1/2))^3 = 3^3 = 27$. 🧮]
#v(20pt)
#only("3-")[Also, $x = 27$. 🎉]
#only("1")[
#voiceover("Auf der linken Seite können wir die Potenzregel anwenden. x hoch 2/3, alles hoch 3/2, ist gleich x hoch 2/3 mal 3/2, was x hoch 1 ergibt, also einfach x.")
]
#only("2")[
#voiceover("Auf der rechten Seite kann 9 hoch 3/2 umgeschrieben werden als der Kubus von 9 hoch 1/2. 9 hoch 1/2 ist 3, und 3 hoch 3 ist 27.")
]
#only("3")[
#voiceover("Also haben wir die Gleichung vereinfacht zu x gleich 27. Und das ist unsere Lösung!")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[Um $x^(2/3) = 9$ zu lösen:]
#v(20pt)
#only("2-")[1. Der Term mit dem Exponenten ist bereits isoliert. ✅]
#v(20pt)
#only("3-")[2. Erhebe beide Seiten auf den Kehrwert des Exponenten: $(x^(2/3))^(3/2) = 9^(3/2)$. 🔄]
#v(20pt)
#only("4-")[3. Vereinfache mit der Potenzregel: $x = 27$. 🧮]
#only("1")[
#voiceover("Zusammengefasst, um x hoch 2/3 gleich 9 zu lösen:")
]
#only("2")[
#voiceover("Zuerst haben wir festgestellt, dass der Term mit dem Exponenten bereits isoliert war.")
]
#only("3")[
#voiceover("Zweitens haben wir beide Seiten auf den Kehrwert des Exponenten erhoben, was 3/2 war.")
]
#only("4")[
#voiceover("Schließlich haben wir mit der Potenzregel vereinfacht und festgestellt, dass x gleich 27 ist. Großartige Arbeit!")
]
]