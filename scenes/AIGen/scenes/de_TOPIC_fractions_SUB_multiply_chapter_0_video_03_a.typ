#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Brüche mit ganzen Zahlen multiplizieren]
  #v(40pt)
  
  #only("1-")[Multipliziere 4 mit 2/3]
  #v(20pt)
  
  #only("-1")[a) 4/3]#only("2-")[#text(fill:red)[a) 4/3]]
  #v(10pt)
  #only("-2")[b) 6/3]#only("3-")[#text(fill:red)[b) 6/3]]
  #v(10pt)
  #only("-3")[c) 8/3]#only("4-")[#text(fill:green)[c) 8/3]]
  #v(10pt)
  #only("-4")[d) 10/3]#only("5-")[#text(fill:red)[d) 10/3]]

  #only("1")[#voiceover("Leider ist das nicht korrekt. Lass uns jede Option durchgehen, um zu verstehen, warum c) 8/3 die richtige Antwort ist.")]
  #only("2")[#voiceover("Option a) 4/3 ist falsch. Dies wäre das Ergebnis, wenn wir 2/3 mit 2 multiplizieren würden, nicht mit 4.")]
  #only("3")[#voiceover("Option b) 6/3 ist ebenfalls falsch. Dies wäre das Ergebnis, wenn wir 2/3 mit 3 multiplizieren würden.")]
  #only("4")[#voiceover("Option c) 8/3 ist korrekt! Wenn wir einen Bruch mit einer ganzen Zahl multiplizieren, multiplizieren wir den Zähler mit der ganzen Zahl und behalten den Nenner bei. Also, 4 mal 2/3 ergibt 8/3.")]
  #only("5")[#voiceover("Option d) 10/3 ist falsch. Dies wäre das Ergebnis, wenn wir 2/3 mit 5 multiplizieren würden.")]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
  #v(40pt)
  
  #only("1-")[1. Das Problem identifizieren: $4 dot 2/3$]
  #v(20pt)
  #only("2-")[2. Die ganze Zahl mit dem Zähler multiplizieren: $4 dot 2 = 8$]
  #v(20pt)
  #only("3-")[3. Den Nenner beibehalten: $3$]
  #v(20pt)
  #only("4-")[4. Das Ergebnis aufschreiben: $8/3$]

  #only("1")[#voiceover("Lass uns die Lösung Schritt für Schritt durchgehen. Zuerst identifizieren wir unser Problem: Wir müssen 4 mit 2/3 multiplizieren.")]
  #only("2")[#voiceover("Als nächstes multiplizieren wir die ganze Zahl 4 mit dem Zähler des Bruchs, der 2 ist. Vier mal zwei ergibt 8.")]
  #only("3")[#voiceover("Der Schlüssel hier ist, dass wir den Nenner beibehalten. Der Nenner bleibt 3.")]
  #only("4")[#voiceover("Schließlich schreiben wir unser Ergebnis als 8/3. Und das ist unsere Antwort!")]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Allgemeine Regel]
  #v(40pt)
  
  #only("1-")[Wenn man eine ganze Zahl $n$ mit einem Bruch $a/b$ multipliziert:]
  #v(20pt)
  #only("2-")[$ n dot a/b = (n dot a)/b $]
  #v(40pt)
  #only("3-")[Beispiel: $ 4 dot 2/3 = (4 dot 2)/3 = 8/3 $]

  #only("1")[#voiceover("Lass uns dieses Konzept verallgemeinern. Wenn man eine ganze Zahl n mit einem Bruch a über b multipliziert,")]
  #only("2")[#voiceover("multiplizieren wir n mit a und behalten b als Nenner bei. Dies gibt uns die Formel: n mal a über b ist gleich n mal a, alles über b.")]
  #only("3")[#voiceover("Anhand unseres Beispiels sehen wir, dass 4 mal 2/3 gleich 4 mal 2, was 8 ist, über 3 ergibt, was uns 8/3 gibt.")]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Warum das funktioniert]
  #v(40pt)
  
  #only("1-")[Multiplikation mit einem Bruch bedeutet, Teile eines Ganzen zu nehmen]
  #v(20pt)
  #only("2-")[2/3 von 4 = 4 dot 2/3]
  #v(20pt)
  #only("3-")[Das ist gleichbedeutend mit:]
  #v(20pt)
  #only("4-")[1. 4 durch 3 teilen: 4/3]
  #v(10pt)
  #only("5-")[2. Das Ergebnis mit 2 multiplizieren: (4/3) dot 2 = 8/3]

  #only("1")[#voiceover("Um zu verstehen, warum das funktioniert, erinnere dich daran, dass die Multiplikation mit einem Bruch bedeutet, Teile eines Ganzen zu nehmen.")]
  #only("2")[#voiceover("In unserem Fall finden wir 2/3 von 4, was dasselbe ist wie 4 mal 2/3.")]
  #only("3")[#voiceover("Wir können dies in zwei Schritten betrachten:")]
  #only("4")[#voiceover("Zuerst teilen wir 4 durch 3, was uns 4/3 gibt.")]
  #only("5")[#voiceover("Dann multiplizieren wir dieses Ergebnis mit 2, was uns 8/3 gibt. Deshalb funktioniert unser Trick, den Zähler mit der ganzen Zahl zu multiplizieren!")]
]