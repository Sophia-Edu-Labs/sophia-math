#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Produktregel]
#v(40pt)
#only("1-")[Die Produktregel wird verwendet, um welche Art von Funktionen zu differenzieren?]
#v(40pt)
#only("-1")[a) Summe von Funktionen]#only("2-")[#text(fill:red)[a) Summe von Funktionen]]
#v(10pt)
#only("-2")[b) Differenz von Funktionen]#only("3-")[#text(fill:red)[b) Differenz von Funktionen]]
#v(10pt)
#only("-3")[c) Produkt von Funktionen]#only("4-")[#text(fill:green)[c) Produkt von Funktionen]]
#v(10pt)
#only("-4")[d) Quotient von Funktionen]#only("5-")[#text(fill:red)[d) Quotient von Funktionen]]
#v(40pt)

#only("1")[#voiceover("Ausgezeichnet! Du hast richtig geantwortet. Lass uns jede Option durchgehen, um zu verstehen, warum.")]
#only("2")[#voiceover("a) Summe von Funktionen ist falsch. Wir verwenden die Summenregel, um Summen von Funktionen zu differenzieren, nicht die Produktregel.")]
#only("3")[#voiceover("b) Differenz von Funktionen ist ebenfalls falsch. Die Differenzregel, die im Wesentlichen die gleiche wie die Summenregel ist, wird für Differenzen verwendet.")]
#only("4")[#voiceover("c) Produkt von Funktionen ist korrekt! Die Produktregel ist speziell dafür gedacht, Produkte von Funktionen zu differenzieren.")]
#only("5")[#voiceover("d) Quotient von Funktionen ist falsch. Wir verwenden die Quotientenregel, um Quotienten oder Brüche von Funktionen zu differenzieren.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Produktregel-Formel]
#v(40pt)
#only("1-")[Wenn $f(x)$ und $g(x)$ differenzierbare Funktionen sind, dann:]
#v(20pt)
#only("2-")[$(f(x) dot g(x))' = f'(x) dot g(x) + f(x) dot g'(x)$]
#v(40pt)
#only("3-")[Wo:]
#v(10pt)
#only("4-")[- $f'(x)$ die Ableitung von $f(x)$ ist]
#v(10pt)
#only("5-")[- $g'(x)$ die Ableitung von $g(x)$ ist]

#only("1")[#voiceover("Schauen wir uns nun die Formel für die Produktregel an.")]
#only("2")[#voiceover("Die Produktregel besagt, dass die Ableitung des Produkts zweier Funktionen f von x und g von x gleich der Ableitung von f mal g plus f mal der Ableitung von g ist.")]
#only("3")[#voiceover("Lass uns das weiter aufschlüsseln.")]
#only("4")[#voiceover("f Strich von x repräsentiert die Ableitung der Funktion f von x.")]
#only("5")[#voiceover("Genauso ist g Strich von x die Ableitung der Funktion g von x.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
#only("1-")[Lass uns differenzieren: $y = x^2 dot sin(x)$]
#v(20pt)
#only("2-")[Schritt 1: Identifiziere $f(x)$ und $g(x)$]
#v(10pt)
#only("3-")[- $f(x) = x^2$]
#only("4-")[- $g(x) = sin(x)$]
#v(20pt)
#only("5-")[Schritt 2: Finde $f'(x)$ und $g'(x)$]
#v(10pt)
#only("6-")[- $f'(x) = 2x$]
#only("7-")[- $g'(x) = cos(x)$]

#only("1")[#voiceover("Lass uns ein Beispiel durchgehen, um zu sehen, wie wir die Produktregel anwenden.")]
#only("2")[#voiceover("Wir werden y gleich x Quadrat mal Sinus von x differenzieren. Zuerst müssen wir unsere beiden Funktionen identifizieren.")]
#only("3")[#voiceover("Wir sehen, dass f von x x Quadrat ist.")]
#only("4")[#voiceover("Und g von x ist Sinus von x.")]
#only("5")[#voiceover("Als nächstes müssen wir die Ableitungen dieser Funktionen finden.")]
#only("6")[#voiceover("Die Ableitung von x Quadrat ist 2x.")]
#only("7")[#voiceover("Und die Ableitung von Sinus von x ist Kosinus von x.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispiel (Fortsetzung)]
#v(40pt)
#only("1-")[Schritt 3: Wende die Produktregel an]
#v(20pt)
#only("2-")[$(x^2 dot sin(x))' = (2x) dot sin(x) + x^2 dot cos(x)$]
#v(40pt)
#only("3-")[Das ist unsere endgültige Antwort! 🎉]

#only("1")[#voiceover("Nun, lass uns die Produktregel mit diesen Komponenten anwenden.")]
#only("2")[#voiceover("Wir erhalten: die Ableitung von x Quadrat mal Sinus von x ist gleich 2x mal Sinus von x plus x Quadrat mal Kosinus von x.")]
#only("3")[#voiceover("Und da haben wir es! Wir haben erfolgreich die Produktregel angewendet, um das Produkt zweier Funktionen zu differenzieren. Denke daran, die Produktregel ist ein mächtiges Werkzeug, um komplexere Differenzierungsprobleme zu bewältigen, die Produkte von Funktionen beinhalten.")]
]