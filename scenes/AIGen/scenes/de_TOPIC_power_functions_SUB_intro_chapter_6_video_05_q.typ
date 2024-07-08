#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Anwendungen von Potenzfunktionen]
  #v(40pt)

  #only("1-")[Welche der folgenden ist eine Anwendung von Potenzfunktionen?]
  #v(20pt)

  #only("2-")[a) Wurfbewegung 🚀]
  #v(10pt)
  #only("3-")[b) Bevölkerungswachstum 👥]
  #v(10pt)
  #only("4-")[c) Temperaturumrechnung 🌡️]
  #v(10pt)
  #only("5-")[d) Fläche eines Kreises 🔴]

  #only("1")[#voiceover("Lass uns Anwendungen von Potenzfunktionen erkunden. Welche der folgenden Szenarien, denkst Du, beinhaltet eine Potenzfunktion?")]
  #only("2")[#voiceover("Ist es die Wurfbewegung, bei der wir die Bahn eines in die Luft geworfenen oder gestarteten Objekts untersuchen?")]
  #only("3")[#voiceover("Oder könnte es das Bevölkerungswachstum sein, das modelliert, wie sich die Anzahl der Individuen in einer Population im Laufe der Zeit verändert?")]
  #only("4")[#voiceover("Vielleicht ist es die Temperaturumrechnung, bei der wir Temperaturen zwischen verschiedenen Skalen umrechnen?")]
  #only("5")[#voiceover("Oder zuletzt, könnte es die Fläche eines Kreises sein, die den Radius mit der Fläche des Kreises in Beziehung setzt?")]
]

//Typ: MC 
#questionDef( 
questionText: "Welche der folgenden ist eine Anwendung von Potenzfunktionen?", 
answerOptions: ("Wurfbewegung", "Bevölkerungswachstum", "Temperaturumrechnung", "Fläche eines Kreises"),
correctAnswerIndex: 3 
)