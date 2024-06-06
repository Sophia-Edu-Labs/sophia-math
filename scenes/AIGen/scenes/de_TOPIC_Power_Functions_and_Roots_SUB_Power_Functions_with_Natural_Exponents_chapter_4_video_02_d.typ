#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Verhalten der Potenzfunktion]
#v(40pt)
Was passiert mit $f(x) = x^4$, wenn sich $x$ null nähert?
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-1")[a) Nähert sich null]#only("2-")[#text(fill:green)[a) Nähert sich null]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) Nähert sich unendlich]#only("3-")[#text(fill:red)[b) Nähert sich unendlich]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) Nähert sich einer Konstante]#only("4-")[#text(fill:red)[c) Nähert sich einer Konstante]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) Oszilliert]#only("5-")[#text(fill:red)[d) Oszilliert]]
#only("1")[#voiceover("Das war leider nicht korrekt. Lass uns sehen, warum Option a die richtige Antwort ist...")]
#only("2")[#voiceover("a) Nähert sich null ist korrekt. Wenn sich x 0 nähert, wird auch der Wert von x hoch vier näher an 0 herankommen.")]
#only("3")[#voiceover("b) Nähert sich unendlich ist falsch. Wenn x kleiner wird, wird auch x hoch vier kleiner und nicht größer.")]
#only("4")[#voiceover("c) Nähert sich einer Konstante ist ebenfalls falsch. Der Wert der Funktion ändert sich, wenn sich x ändert, daher nähert sie sich keinem konstanten Wert.")]
#only("5")[#voiceover("Und d) Oszilliert ist auch falsch. Die Funktion wechselt nicht zwischen positiven und negativen Werten, wenn sich x null nähert.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung von $f(x) = x^4$]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt 
import numpy as np 

x = np.linspace(-2, 2, 1000) 
y = x**4 

plt.figure(figsize=(8, 6)) 
plt.plot(x, y, label='f(x) = x^4') 
plt.grid(True) 
plt.axhline(0, color='black', lw=0.5) 
plt.axvline(0, color='black', lw=0.5) 
plt.legend() 
plt.title('Graph von f(x) = x^4') 
plt.xlabel('x') 
plt.ylabel('f(x)') 
plt.show() 
```, 
width: 360pt), 
) 
] 
] 
#v(40pt) 
#only("1-")[Lass uns den Graphen von $f(x) = x^4$ untersuchen:] 
#v(20pt) 
#only("2-")[- Wenn sich $x$ von beiden Seiten null nähert, nähert sich $f(x)$ null 📉] 
#only("3-")[- Das liegt daran, dass jede Zahl, die auf eine gerade Potenz erhoben wird, immer nicht negativ ist 🔢] 
#only("4-")[- Also, wenn $x$ sehr klein wird (nahe null), wird $x^4$ auch sehr klein (nahe null) 🔍]

#only("1")[#voiceover("Lass uns den Graphen von f von x gleich x hoch vier ansehen, um dieses Verhalten besser zu verstehen.")]
#only("2")[#voiceover("Beachte, dass sich, wenn sich x von der positiven oder negativen Seite null nähert, der Wert von f von x auch immer mehr null nähert.")]
#only("3")[#voiceover("Das liegt daran, dass das Erheben einer beliebigen reellen Zahl in eine gerade Potenz, wie 4, immer ein nicht negatives Ergebnis liefert.")]
#only("4")[#voiceover("Also, wenn x im Betrag sehr klein wird, das heißt, es nähert sich null, wird auch x hoch vier sehr klein und nähert sich null.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Grenzwertnotation]
#v(40pt)
#only("1-")[Wir können dieses Verhalten mit der Grenzwertnotation ausdrücken:]
#v(20pt)
#only("2-")[$ lim_(x arrow 0) x^4 = 0 $]
#v(20pt)
#only("3-")[Das liest sich als "der Grenzwert von $x^4$, wenn $x$ sich null nähert, ist null" 📖]
#v(20pt)
#only("4-")[Es ist eine prägnante Art, das Verhalten der Funktion in der Nähe eines Punktes zu beschreiben 🎯]

#only("1")[#voiceover("Wir können dieses Verhalten der Funktion mit mathematischer Notation ausdrücken, speziell mit der Grenzwertnotation.")]
#only("2")[#voiceover("Wir schreiben 'der Grenzwert von x hoch vier, wenn sich x null nähert, ist null'.")]
#only("3")[#voiceover("Das liest sich als 'der Grenzwert von x hoch vier, wenn sich x null nähert, ist null'.")]
#only("4")[#voiceover("Die Grenzwertnotation ist eine prägnante und präzise Art, das Verhalten einer Funktion zu beschreiben, wenn sich der Eingabewert einem bestimmten Punkt nähert.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
- Für die Potenzfunktion $f(x) = x^4$:
  - Wenn $x arrow 0$, dann $f(x) arrow 0$ ✅
  - Das liegt daran, dass $x^4$ für reelle $x$ immer nicht negativ ist 📈
  - Wir können dies als $lim_(x arrow 0) x^4 = 0$ schreiben 📝
- Das Verständnis von Grenzwerten ist entscheidend für die Analyse des Verhaltens von Funktionen! 🔑

#only("1")[#voiceover("Lass uns zusammenfassen, was wir über das Verhalten dieser Potenzfunktion f von x gleich x hoch vier gelernt haben.")]
#only("2")[#voiceover("Wenn sich x null nähert, nähert sich auch f von x null. Das liegt daran, dass x hoch vier für reelle Werte von x immer nicht negativ ist.")]
#only("3")[#voiceover("Wir können dieses Verhalten prägnant mit der Grenzwertnotation ausdrücken, indem wir schreiben 'der Grenzwert von x hoch vier, wenn sich x null nähert, ist null'.")]
#only("4")[#voiceover("Das Verständnis von Grenzwerten ist ein Schlüsselkonzept zur Analyse des Verhaltens von Funktionen, besonders wenn sich der Eingabewert bestimmten Schlüsselpunkten nähert.")]
]