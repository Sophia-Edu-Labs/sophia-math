#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme

#set text(lang: "de")

#slide()[
  #text(size: 26pt, weight: "bold")[Gruppe für Präsentation]

  #v(40pt)

  #only("-1")[- 20 Schüler in der Klasse]
  #only("-2")[- Wähle Gruppe von 3 Schülern]
  
  #v(40pt)

  Welcher Binomialkoeffizient gibt die Anzahl der Möglichkeiten an?

  #v(40pt)

  #only("-1")[- $ binom(3,20) $]#only("2-")[#text(fill:red)[- $ binom(3,20) $]]

  #v(10pt)

  #only("-2")[- $ binom(20,2) $]#only("3-")[#text(fill:red)[- $ binom(20,2) $]]

  #v(10pt) 

  #only("-3")[- $ binom(20,3) $]#only("4-")[#text(fill:green)[- $ binom(20,3) $]]

  #only("1")[#voiceover("Korrekt, klasse! Schauen wir uns die Optionen der Reihe nach an...")]

  #only("2")[#voiceover("Der Binomialkoeffizient von 3 über 20 ist nicht definiert, da der obere Index nicht größer als der untere sein kann. Außerdem würde er, wenn er definiert wäre, die Anzahl der Möglichkeiten angeben, 20 Schüler aus 3 auszuwählen, was in unserem Kontext keinen Sinn ergibt.")]

  #only("3")[#voiceover("Der Binomialkoeffizient von 20 über 2 ist nicht korrekt. Er würde die Anzahl der Möglichkeiten angeben, 2 Schüler aus 20 auszuwählen, nicht 3.")]

  #only("4")[#voiceover("Der Binomialkoeffizient von 20 über 3 ist die richtige Antwort. Er gibt genau die Anzahl der Möglichkeiten an, 3 Schüler aus einer Klasse von 20 auszuwählen.")]

  #only("5")[#voiceover("Zur Erinnerung: Der Binomialkoeffizient n über k gibt immer die Anzahl der Möglichkeiten an, k Elemente aus n auszuwählen. Dabei muss k kleiner oder gleich n sein. In unserem Fall ist n=20 (die Gesamtzahl der Schüler) und k ist 3 (die Anzahl der Schüler, die wir für die Präsentation auswählen wollen). Daher ist der Binomialkoeffizient von 20 über 3 die korrekte Antwort.")]
]