#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Übung 1]
#v(40pt)
Was ist $root(3, 8 8 27)$?
#v(40pt)
#only("-1")[a) 2]#only("2-")[#text(fill:red)[a) 2]]
#v(10pt)
#only("-1")[b) 3]#only("2-")[#text(fill:red)[b) 3]]
#v(10pt) 
#only("-1")[c) 6]#only("2-")[#text(fill:green)[c) 6]]
#v(10pt)
#only("-1")[d) 9]#only("2-")[#text(fill:red)[d) 9]]

#only("1")[
#voiceover("Das ist richtig, tolle Arbeit! Lass uns sehen, wie wir das Schritt für Schritt lösen können.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösung]
#v(40pt)
#only("1-")[- $root(3, 8 8 27)$]
#v(20pt)
#only("2-")[= $root(3, 216)$]
#v(20pt)
#only("3-")[= $6$]
#v(20pt)
#only("4-")[⇒ Die richtige Antwort ist c) 6 ✅]

#only("1")[
#voiceover("Wir beginnen mit der Kubikwurzel von 8 mal 8 mal 27.")
]
#only("2")[
#voiceover("Zuerst vereinfachen wir innerhalb der Wurzel. 8 mal 8 ist 64, und 64 mal 27 ist 216. Also haben wir die Kubikwurzel von 216.")  
]
#only("3")[  
#voiceover("Nun, welche Zahl ergibt, wenn sie hoch drei genommen wird, 216? Diese Zahl ist 6, denn 6 hoch drei, oder 6 mal 6 mal 6, ergibt 216.")
]
#only("4")[
#voiceover("Daher ist die Kubikwurzel von 216 gleich 6, und die richtige Antwort ist c) 6.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Vereinfache zuerst innerhalb der Wurzel 🧮]
#v(20pt)
#only("2-")[- Finde die Zahl, die, wenn sie auf die Potenz der Wurzel erhöht wird, den vereinfachten Wert ergibt 🔍]
#v(20pt)
#only("3-")[- Diese Zahl ist die n-te Wurzel! 🎉]

#only("1")[
#voiceover("Zusammenfassend, wenn Du nach n-ten Wurzeln suchst, vereinfache immer zuerst innerhalb der Wurzel, wenn möglich.")  
]
#only("2")[
#voiceover("Denke dann darüber nach, welche Zahl, wenn sie auf die Potenz der Wurzel erhöht wird, den vereinfachten Wert innerhalb der Wurzel ergibt.")
]  
#only("3")[
#voiceover("Diese Zahl ist Deine Antwort - die n-te Wurzel! Merke Dir diese Schritte und Du wirst in der Lage sein, n-te Wurzelprobleme mit Zuversicht zu lösen.")
]
]