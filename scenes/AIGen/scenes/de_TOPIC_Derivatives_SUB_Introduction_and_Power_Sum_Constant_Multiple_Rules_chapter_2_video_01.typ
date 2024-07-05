#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summenregel für Ableitungen]
  #v(40pt)
  
  #only("1-")[📚 Analysis: Bestimmen von Änderungsraten]
  #v(20pt)
  #only("2-")[🧮 Ableitungen: Messen, wie sich Funktionen ändern]
  #v(20pt)
  #only("3-")[❓ Was passiert, wenn wir Funktionen addieren?]
  #v(20pt)
  #only("4-")[🔍 Summenregel: Ein mächtiges Werkzeug]

  #only("1")[
    #voiceover("Willkommen zu unserer Erkundung der Summenregel für Ableitungen. In der Analysis beschäftigen wir uns oft mit dem Bestimmen von Änderungsraten.")
  ]
  #only("2")[
    #voiceover("Ableitungen sind unser Hauptwerkzeug, um zu messen, wie sich Funktionen ändern. Aber was passiert, wenn wir mit komplexeren Funktionen arbeiten?")
  ]
  #only("3")[
    #voiceover("Zum Beispiel, was ist, wenn wir die Ableitung einer Summe von Funktionen finden müssen? Brauchen wir eine neue Methode, oder können wir das nutzen, was wir bereits wissen?")
  ]
  #only("4")[
    #voiceover("Hier kommt die Summenregel ins Spiel. Sie ist ein mächtiges Werkzeug, das unsere Arbeit mit Ableitungen von Summen vereinfacht. Lass uns eintauchen und sehen, wie sie funktioniert!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Die Summenregel]
  #v(40pt)
  
  #only("1-")[📝 Aussage: $ (f(x) + g(x))' = f'(x) + g'(x) $]
  #v(20pt)
  #only("2-")[🔢 Beispiel: $ (x^2 + sin(x))' = 2x + cos(x) $]
  #v(20pt)
  #only("3-")[💡 Intuition: Änderungsrate der Summe = Summe der Änderungsraten]
  #v(20pt)
  #only("4-")[🚀 Vereinfacht komplexe Ableitungen]

  #only("1")[
    #voiceover("Die Summenregel für Ableitungen besagt, dass die Ableitung einer Summe von Funktionen gleich der Summe ihrer Ableitungen ist. In mathematischer Notation schreiben wir dies als: die Ableitung von f von x plus g von x ist gleich f Strich von x plus g Strich von x.")
  ]
  #only("2")[
    #voiceover("Schauen wir uns ein Beispiel an. Wenn wir die Funktion x Quadrat plus Sinus von x haben, ist ihre Ableitung 2x plus Kosinus von x. Wir erhalten dies, indem wir die Potenzregel auf x Quadrat und die Ableitungsregel für Sinus auf Sinus von x anwenden und dann die Ergebnisse addieren.")
  ]
  #only("3")[
    #voiceover("Intuitiv macht das Sinn. Die Änderungsrate einer Summe ist gleich der Summe der einzelnen Änderungsraten. Es ist wie wenn du Geld aus zwei Jobs verdienst - deine gesamte Verdienstgeschwindigkeit ist die Summe deiner Verdienstgeschwindigkeiten aus jedem Job.")
  ]
  #only("4")[
    #voiceover("Diese Regel vereinfacht den Prozess des Findens von Ableitungen für komplexe Funktionen, die Summen enthalten, erheblich. Anstatt zu versuchen, die gesamte Funktion auf einmal abzuleiten, können wir sie in einfachere Teile zerlegen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung: Summenregel für Ableitungen]
  #v(40pt)
  
  #only("1-")[📌 $ (f(x) + g(x))' = f'(x) + g'(x) $]
  #v(20pt)
  #only("2-")[🔑 Wichtige Punkte:]
  #v(10pt)
  #only("3-")[   - Gilt für jede Anzahl von Funktionen]
  #v(10pt)
  #only("4-")[   - Vereinfacht komplexe Ableitungen]
  #v(10pt)
  #only("5-")[   - Intuitiv: Summe der einzelnen Änderungen]

  #only("1")[
    #voiceover("Lass uns zusammenfassen, was wir über die Summenregel für Ableitungen gelernt haben. Die Regel besagt, dass die Ableitung von f von x plus g von x gleich f Strich von x plus g Strich von x ist.")
  ]
  #only("2")[
    #voiceover("Es gibt ein paar wichtige Punkte, die du dir merken solltest:")
  ]
  #only("3")[
    #voiceover("Erstens, sie gilt für jede Anzahl von Funktionen, nicht nur zwei. Wenn du also drei, vier oder mehr Funktionen addierst, kannst du diese Regel trotzdem anwenden.")
  ]
  #only("4")[
    #voiceover("Zweitens, sie vereinfacht den Prozess des Findens von Ableitungen für komplexe Funktionen, die Summen enthalten, erheblich.")
  ]
  #only("5")[
    #voiceover("Und schließlich ist sie intuitiv, wenn du sie als Summe der einzelnen Änderungsraten betrachtest. Dieses Verständnis kann dir helfen, die Regel in verschiedenen Situationen sicher anzuwenden.")
  ]
]