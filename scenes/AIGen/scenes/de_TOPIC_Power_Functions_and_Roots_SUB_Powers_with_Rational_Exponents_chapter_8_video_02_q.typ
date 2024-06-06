#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Anwendungen in der realen Welt 🌍]
#v(40pt)
#only("1-")[Welche der folgenden ist ein Beispiel für eine Anwendung von rationalen Exponenten in der realen Welt?]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) Berechnung von Zinseszinsen 💰]
// Antwortoption a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) Berechnung der Fläche eines Kreises ⚪]
// Antwortoption b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) Lösen linearer Gleichungen 📈]
// Antwortoption c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) Bestimmung der Steigung einer Linie 📐]
// Antwortoption d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Wissen über Anwendungen von rationalen Exponenten in der realen Welt testen. Welche der folgenden ist ein Beispiel für eine Anwendung von rationalen Exponenten in der realen Welt?")]
#only("2")[#voiceover("Ist es die Berechnung von Zinseszinsen,")]
#only("3")[#voiceover("oder die Berechnung der Fläche eines Kreises,")]
#only("4")[#voiceover("oder vielleicht das Lösen linearer Gleichungen,")]
#only("5")[#voiceover("oder ist es die Bestimmung der Steigung einer Linie?")]
]#questionDef(
questionText: "Welche der folgenden ist ein Beispiel für eine Anwendung von rationalen Exponenten in der realen Welt?",
answerOptions: ("Berechnung von Zinseszinsen", "Berechnung der Fläche eines Kreises", "Lösen linearer Gleichungen", "Bestimmung der Steigung einer Linie"),
correctAnswerIndex: 0,
)