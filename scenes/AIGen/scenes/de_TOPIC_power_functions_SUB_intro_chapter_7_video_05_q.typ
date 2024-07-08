#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Verhalten von $x^4$, wenn $x$ gegen Unendlichkeit geht]
  #v(40pt)

  #only("1-")[Betrachte die Funktion $f(x) = x^4$]
  #v(20pt)

  #only("2-")[Wie verhält sich diese Funktion, wenn $x$ gegen:
    #only("3-")[- Positive Unendlichkeit ($x arrow infinity$)]
    #only("4-")[- Negative Unendlichkeit ($x arrow -infinity$)]
  ]

  #v(20pt)

  #only("5-")[Mögliche Verhaltensweisen:
    #only("6-")[a) Nähert sich 0]
    #only("7-")[b) Wächst exponentiell]
    #only("8-")[c) Sinkt unbegrenzt]
    #only("9-")[d) Steigt unbegrenzt]
  ]

  #only("1")[#voiceover("Lass uns das Verhalten einer Potenzfunktion untersuchen. Betrachte die Funktion f von x gleich x hoch vier.")]
  
  #only("2")[#voiceover("Wir wollen verstehen, wie sich diese Funktion verhält, wenn x extreme Werte annimmt.")]
  
  #only("3")[#voiceover("Zuerst denken wir darüber nach, was passiert, wenn x gegen positive Unendlichkeit geht.")]
  
  #only("4")[#voiceover("Dann betrachten wir, was passiert, wenn x gegen negative Unendlichkeit geht.")]
  
  #only("5")[#voiceover("Hier sind einige mögliche Verhaltensweisen der Funktion:")]
  
  #only("6")[#voiceover("Option A: Die Funktion nähert sich null.")]
  
  #only("7")[#voiceover("Option B: Die Funktion wächst exponentiell.")]
  
  #only("8")[#voiceover("Option C: Die Funktion sinkt unbegrenzt.")]
  
  #only("9")[#voiceover("Option D: Die Funktion steigt unbegrenzt. Welche dieser Verhaltensweisen beschreibt das Verhalten von x hoch vier, wenn x sowohl gegen positive als auch negative Unendlichkeit geht?")]
]

//Typ: MC 
#questionDef( 
questionText: "Welche der folgenden Aussagen beschreibt das Verhalten von $f(x) = x^4$, wenn $x$ gegen Unendlichkeit und negative Unendlichkeit geht?", 
answerOptions: ("Nähert sich $0$", "Wächst exponentiell", "Sinkt unbegrenzt", "Steigt unbegrenzt"),
correctAnswerIndex: 3 
)