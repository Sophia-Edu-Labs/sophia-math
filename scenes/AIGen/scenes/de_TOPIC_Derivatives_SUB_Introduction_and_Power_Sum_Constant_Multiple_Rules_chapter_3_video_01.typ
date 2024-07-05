#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Konstante Vielfache Regel für Ableitungen]
  #v(40pt)

  #only("1-")[📊 Skalierung von Funktionen und deren Ableitungen]
  #v(20pt)
  #only("2-")[🤔 Was passiert, wenn wir eine Funktion mit einer Konstante multiplizieren?]
  #v(20pt)
  #only("3-")[💡 Einführung der Konstanten Vielfache Regel]

  #only("1")[
    #voiceover("Willkommen zu unserer Erkundung der Konstanten Vielfache Regel für Ableitungen. Diese Regel ist entscheidend, um zu verstehen, wie die Skalierung von Funktionen ihre Ableitungen beeinflusst.")
  ]
  #only("2")[
    #voiceover("Stell dir vor, du analysierst das Wachstum einer Population und stellst plötzlich fest, dass die Anfangszahl um den Faktor 2 falsch war. Wie würde sich dies auf die Änderungsrate auswirken? Hier kommt die Konstante Vielfache Regel ins Spiel.")
  ]
  #only("3")[
    #voiceover("Die Konstante Vielfache Regel bietet eine einfache, aber kraftvolle Methode, um mit solchen Situationen umzugehen. Lass uns eintauchen und sehen, wie sie funktioniert!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Die Konstante Vielfache Regel]
  #v(40pt)

  #only("1-")[Regel: $ (d/"dx")(c f(x)) = c (d/"dx" f(x)) $]
  #v(20pt)
  #only("2-")[Wo:]
  #v(10pt)
  #only("2-")[- $c$ ist eine Konstante]
  #v(10pt)
  #only("3-")[- $f(x)$ ist eine differenzierbare Funktion]
  #v(20pt)
  #only("4-")[💡 Die Ableitung eines konstanten Vielfachen einer Funktion]
  #v(10pt)
  #only("4-")[   ist das konstante Vielfache der Ableitung der Funktion]

  #only("1")[
    #voiceover("Die Konstante Vielfache Regel besagt, dass die Ableitung eines konstanten Vielfachen einer Funktion gleich dem konstanten Vielfachen der Ableitung der Funktion ist. Lass uns das genauer betrachten.")
  ]
  #only("2")[
    #voiceover("In dieser Regel repräsentiert c eine Konstante. Dies könnte jede Zahl sein, wie 2, 5 oder sogar Pi.")
  ]
  #only("3")[
    #voiceover("f von x repräsentiert eine differenzierbare Funktion. Das bedeutet, wir können ihre Ableitung finden.")
  ]
  #only("4")[
    #voiceover("Einfacher ausgedrückt: Wenn wir eine Funktion mit einer Konstante multiplizieren, bevor wir die Ableitung nehmen, ist das dasselbe, als würden wir zuerst die Ableitung nehmen und dann mit der Konstante multiplizieren. Diese Regel vereinfacht viele Ableitungsberechnungen erheblich.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung]
  #v(40pt)

  #only("1-")[📌 Konstante Vielfache Regel: $ (d/"dx")(c f(x)) = c (d/"dx" f(x)) $]
  #v(20pt)
  #only("2-")[🔑 Wichtige Punkte:]
  #v(10pt)
  #only("2-")[- Vereinfacht Ableitungsberechnungen]
  #v(10pt)
  #only("3-")[- Gilt für jede Konstante und differenzierbare Funktion]
  #v(10pt)
  #only("4-")[- Die Reihenfolge spielt keine Rolle: multiplizieren und dann ableiten]
  #v(10pt)
  #only("4-")[  oder ableiten und dann multiplizieren]

  #only("1")[
    #voiceover("Lass uns zusammenfassen, was wir über die Konstante Vielfache Regel für Ableitungen gelernt haben.")
  ]
  #only("2")[
    #voiceover("Diese Regel ist ein kraftvolles Werkzeug, das viele Ableitungsberechnungen vereinfacht, besonders wenn es um skalierte Funktionen geht.")
  ]
  #only("3")[
    #voiceover("Sie gilt für jede Konstante, die mit einer differenzierbaren Funktion multipliziert wird, und ist daher in der Analysis weit anwendbar.")
  ]
  #only("4")[
    #voiceover("Denke daran, das Schöne an dieser Regel ist, dass die Reihenfolge keine Rolle spielt. Du kannst die Funktion mit einer Konstante multiplizieren und dann ableiten oder zuerst ableiten und dann mit der Konstante multiplizieren. Das Ergebnis wird dasselbe sein!")
  ]
]