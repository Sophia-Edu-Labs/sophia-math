#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Grenzwerte von Summen und Produkten]
#v(40pt)
#only("1-")[- Finde $lim_(x -> 3) (x^2 + 2x)$]
// Die Problemstellung wird auf allen Folien angezeigt
#v(20pt)
#only("2-")[- Verwende die Summenregel: $lim_(x -> a) (f(x) + g(x)) = lim_(x -> a) f(x) + lim_(x -> a) g(x)$]
// Die Summenregel wird ab Folie 2 angezeigt
#v(20pt)
#only("3-")[- $lim_(x -> 3) (x^2) + lim_(x -> 3) (2x)$]
// Der Grenzwert wird auf Folie 3 in zwei Teile unterteilt, indem die Summenregel verwendet wird
#v(20pt)
#only("4-")[- $= 3^2 + 2 3$]
// Die Grenzwerte werden auf Folie 4 ausgewertet
#v(20pt)
#only("5-")[- $= 9 + 6 = 15$ ✅]
// Die endgültige Antwort wird auf Folie 5 angezeigt
#only("1")[
#voiceover("Leider ist das nicht korrekt. Lass uns gemeinsam Schritt für Schritt die Lösung durchgehen.")
]
#only("2")[
#voiceover("Um den Grenzwert einer Summe zu finden, können wir die Summenregel verwenden. Sie besagt, dass der Grenzwert einer Summe gleich der Summe der Grenzwerte ist.")
]
#only("3")[
#voiceover("Also können wir unseren Grenzwert in zwei Teile aufteilen: den Grenzwert von x² und den Grenzwert von 2x.")
]
#only("4")[
#voiceover("Nun können wir jeden Grenzwert separat auswerten. Der Grenzwert von x², wenn x sich 3 nähert, ist 3², was 9 ist. Und der Grenzwert von 2x, wenn x sich 3 nähert, ist 2 mal 3, was 6 ist.")
]
#only("5")[
#voiceover("Schließlich addieren wir diese beiden Grenzwerte. 9 plus 6 ergibt 15. Und das ist unsere endgültige Antwort!")
]
]