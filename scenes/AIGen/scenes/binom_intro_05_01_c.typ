#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#set text(lang: "de")
#slide()[
#text(size: 26pt, weight: "bold")[Teams bilden]
#v(40pt)
#only("-1")[- 12 Personen]
#only("-2")[- Bilde Team aus 4 Personen]
#v(40pt)
Welcher Binomialkoeffizient gibt die Anzahl der Möglichkeiten an?
#v(40pt)
#only("-1")[- $ binom(12,3) $]#only("2-")[#text(fill:red)[- $ binom(12,3) $]]
#v(10pt)
#only("-2")[- $ binom(12,4) $]#only("3-")[#text(fill:green)[- $ binom(12,4) $]]
#v(10pt)
#only("-3")[- $ binom(4,12) $]#only("4-")[#text(fill:red)[- $ binom(4,12) $]]
#only("1")[#voiceover("Das ist leider falsch. Schauen wir uns die Optionen der Reihe nach an...")]
#only("2")[#voiceover("Der Binomialkoeffizient von 12 über 3 ist nicht korrekt. Er würde die Anzahl der Möglichkeiten angeben, 3 Personen aus 12 auszuwählen, nicht 4.")]
#only("3")[#voiceover("Der Binomialkoeffizient von 12 über 4 ist die richtige Antwort. Er gibt genau die Anzahl der Möglichkeiten an, 4 Personen aus einer Gruppe von 12 auszuwählen.")]
#only("4")[#voiceover("Der Binomialkoeffizient von 4 über 12 ist nicht definiert, da der obere Index nicht größer als der untere sein kann. Außerdem würde er, wenn er definiert wäre, die Anzahl der Möglichkeiten angeben, 12 Personen aus 4 auszuwählen, was in unserem Kontext keinen Sinn ergibt.")]
#only("5")[#voiceover("Zur Erinnerung: Der Binomialkoeffizient n über k gibt immer die Anzahl der Möglichkeiten an, k Elemente aus n auszuwählen. Dabei muss k kleiner oder gleich n sein. In unserem Fall ist n=12 (die Gesamtzahl der Personen) und k ist 4 (die Anzahl der Personen, die wir für das Team auswählen wollen). Daher ist der Binomialkoeffizient von 12 über 4 die korrekte Antwort.")]
]