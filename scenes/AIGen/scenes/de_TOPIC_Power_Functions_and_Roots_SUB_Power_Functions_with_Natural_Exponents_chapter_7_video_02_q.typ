#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Anwendungen von Potenzfunktionen 🏗️]
#v(40pt)
#only("1-")[Welche der folgenden ist eine Anwendung von Potenzfunktionen?]
#v(40pt)
#only("2-")[a) Berechnung der Fläche eines Quadrats 📐]
#v(10pt)
#only("3-")[b) Modellierung des Bevölkerungswachstums 📈]
#v(10pt)
#only("4-")[c) Bestimmung der Geschwindigkeit eines Autos 🏎️]
#v(10pt) 
#only("5-")[d) Alle oben genannten 🌐]

#only("1")[#voiceover("Lass uns dein Verständnis von Potenzfunktionen und deren Anwendungen testen. Welche der folgenden ist eine Anwendung von Potenzfunktionen?")]
#only("2")[#voiceover("Ist es die Berechnung der Fläche eines Quadrats,")]  
#only("3")[#voiceover("oder die Modellierung des Bevölkerungswachstums,")]
#only("4")[#voiceover("oder die Bestimmung der Geschwindigkeit eines Autos,")]
#only("5")[#voiceover("oder sind alle diese Anwendungen von Potenzfunktionen?")]
]#questionDef(
questionText: "Welche der folgenden ist eine Anwendung von Potenzfunktionen?",
answerOptions: ("Berechnung der Fläche eines Quadrats", "Modellierung des Bevölkerungswachstums", "Bestimmung der Geschwindigkeit eines Autos", "Alle oben genannten"),
correctAnswerIndex: 3
)