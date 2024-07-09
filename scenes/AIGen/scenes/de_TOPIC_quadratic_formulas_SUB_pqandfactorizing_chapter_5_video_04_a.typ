#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Quadratische Gleichungen durch Faktorisierung lösen]
  #v(40pt)
  #only("1-")[Gleichung: $x^2 - 9x + 14 = 0$]
  #v(20pt)
  #only("2-")[Schritt 1: Bestimme $a$, $b$ und $c$]
  #v(10pt)
  #only("3-")[- $a = 1$]
  #only("4-")[- $b = -9$]
  #only("5-")[- $c = 14$]
  
  #only("1")[#voiceover("Gut gemacht beim Lösen dieser quadratischen Gleichung! Lass uns die Lösung Schritt für Schritt durchgehen. Wir beginnen mit der Gleichung x Quadrat minus 9x plus 14 gleich null.")]
  #only("2")[#voiceover("Zuerst identifizieren wir die Koeffizienten a, b und c in der Standardform ax Quadrat plus bx plus c gleich null.")]
  #only("3")[#voiceover("a ist der Koeffizient von x Quadrat, welcher 1 ist.")]
  #only("4")[#voiceover("b ist der Koeffizient von x, welcher minus 9 ist.")]
  #only("5")[#voiceover("Und c ist der konstante Term, welcher 14 ist.")]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Faktoren finden]
  #v(40pt)
  #only("1-")[Schritt 2: Finde zwei Zahlen, die:] 
  #v(10pt)
  #only("2-")[- Multipliziert $a \cdot c = 1 \cdot 14 = 14$ ergeben]
  #v(10pt)
  #only("3-")[- Addiert $b = -9$ ergeben]
  #v(20pt)
  #only("4-")[Die Zahlen sind $-2$ und $-7$]
  
  #only("1")[#voiceover("Nun müssen wir zwei Zahlen finden, die zwei Bedingungen erfüllen.")]
  #only("2")[#voiceover("Erstens, wenn sie multipliziert werden, sollten sie das Produkt von a und c ergeben, welches 1 mal 14, also 14 ist.")]
  #only("3")[#voiceover("Zweitens, wenn sie addiert werden, sollten sie b ergeben, welches minus 9 ist.")]
  #only("4")[#voiceover("Die Zahlen, die diese Bedingungen erfüllen, sind minus 2 und minus 7.")]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Die Gleichung faktorisieren]
  #v(40pt)
  #only("1-")[Schritt 3: Den mittleren Term umschreiben]
  #v(10pt)
  #only("2-")[$(x^2 - 2x - 7x + 14 = 0)$]
  #v(20pt)
  #only("3-")[Schritt 4: Durch Gruppierung faktorisieren]
  #v(10pt)
  #only("4-")[$(x(x - 2) - 7(x - 2) = 0)$]
  #v(10pt)
  #only("5-")[$(x - 7)(x - 2) = 0$]
  
  #only("1")[#voiceover("Nun können wir die Gleichung faktorisieren. Zuerst schreiben wir den mittleren Term mit unseren zwei Zahlen um.")]
  #only("2")[#voiceover("Das ergibt x Quadrat minus 2x minus 7x plus 14 gleich null.")]
  #only("3")[#voiceover("Als nächstes faktorisieren wir durch Gruppierung.")]
  #only("4")[#voiceover("Wir können x minus 2 aus den ersten beiden Termen und minus 7 aus den letzten beiden Termen ausklammern.")]
  #only("5")[#voiceover("Das vereinfacht sich zu x minus 7 mal x minus 2 gleich null.")]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Die Gleichung lösen]
  #v(40pt)
  #only("1-")[Schritt 5: Nutze die Nullregel]
  #v(10pt)
  #only("2-")[Entweder $(x - 7 = 0)$ oder $(x - 2 = 0)$]
  #v(20pt)
  #only("3-")[Schritt 6: Löse nach $x$ auf]
  #v(10pt)
  #only("4-")[- $x = 7$ oder $x = 2$]
  
  #only("1")[#voiceover("Um diese Gleichung zu lösen, nutzen wir die Nullregel. Diese besagt, dass wenn das Produkt von Faktoren null ist, dann muss einer der Faktoren null sein.")]
  #only("2")[#voiceover("Also entweder x minus 7 gleich null oder x minus 2 gleich null.")]
  #only("3")[#voiceover("Schließlich lösen wir nach x auf.")]
  #only("4")[#voiceover("Wir finden, dass x gleich 7 oder x gleich 2 ist. Das sind unsere Lösungen!")]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)
  #only("1-")[Die Lösungen für $x^2 - 9x + 14 = 0$ sind:]
  #v(20pt)
  #only("2-")[#text(size: 24pt)[x = 2 oder x = 7]]
  #v(40pt)
  #only("3-")[💡 Überprüfe immer deine Lösungen!]
  
  #only("1")[#voiceover("Unsere endgültige Antwort ist also, dass die Lösungen für x Quadrat minus 9x plus 14 gleich null sind:")]
  #only("2")[#voiceover("x gleich 2 oder x gleich 7.")]
  #only("3")[#voiceover("Gut gemacht beim Lösen dieser quadratischen Gleichung! Denk daran, es ist immer eine gute Idee, deine Lösungen zu überprüfen, indem du sie wieder in die ursprüngliche Gleichung einsetzt.")]
]