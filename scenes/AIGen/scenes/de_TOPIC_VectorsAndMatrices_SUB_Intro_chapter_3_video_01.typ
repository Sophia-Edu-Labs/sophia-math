#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Einführung in Matrizen]
  #v(40pt)
  #only("1-")[📊 Daten effizient organisieren]
  #v(20pt)
  #only("2-")[🧮 Gleichungssysteme lösen]
  #v(20pt)
  #only("3-")[🖥️ Computergrafik und Bildverarbeitung]
  #v(20pt)
  #only("4-")[📈 Wirtschaftsmodelle]

  #only("1")[
    #voiceover("Willkommen zu unserer Einführung in Matrizen! Hast Du Dich jemals gefragt, wie wir große Datenmengen effizient organisieren können? Oder wie Computer komplexe Berechnungen für Grafiken durchführen? Matrizen sind die Antwort!")
  ]
  #only("2")[
    #voiceover("Matrizen sind mächtige Werkzeuge in der Mathematik, die es uns ermöglichen, Gleichungssysteme mit mehreren Variablen zu lösen.")
  ]
  #only("3")[
    #voiceover("Sie sind auch in der Computergrafik und Bildverarbeitung entscheidend, da sie uns ermöglichen, visuelle Daten zu transformieren und zu manipulieren.")
  ]
  #only("4")[
    #voiceover("Selbst in der Wirtschaft helfen uns Matrizen, komplexe Beziehungen zwischen verschiedenen Faktoren zu modellieren. Lass uns eintauchen und erkunden, was Matrizen sind!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Was ist eine Matrix?]
  #v(40pt)
  #only("1-")[📏 Rechteckiges Zahlenarray]
  #v(20pt)
  #only("2-")[🔢 Organisiert in Zeilen und Spalten]
  #v(20pt)
  #only("3-")[Beispiel: $A = mat(1, 2, 3; 4, 5, 6)$]

  #only("1")[
    #voiceover("Eine Matrix ist im Wesentlichen ein rechteckiges Array von Zahlen. Es ist eine Möglichkeit, Daten in einem strukturierten Format zu organisieren.")
  ]
  #only("2")[
    #voiceover("Diese Zahlen sind in Zeilen und Spalten angeordnet und bilden eine gitterartige Struktur. Jede Zahl in diesem Gitter wird als Element der Matrix bezeichnet.")
  ]
  #only("3")[
    #voiceover("Schauen wir uns ein Beispiel an. Hier ist eine Matrix A. Sie hat 2 Zeilen und 3 Spalten. Wir lesen sie als: 1, 2, 3 in der ersten Zeile und 4, 5, 6 in der zweiten Zeile.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Matrix-Notation]
  #v(40pt)
  #only("1-")[🏷️ Benennung: Großbuchstaben (A, B, C)]
  #v(20pt)
  #only("2-")[📏 Größe: m × n (Zeilen × Spalten)]
  #v(20pt)
  #only("3-")[🔢 Elemente: $a_("ij")$ (i-te Zeile, j-te Spalte)]
  #v(20pt)
  #only("4-")[Beispiel: $B = mat(b_(11), b_(12); b_(21), b_(22))$]

  #only("1")[
    #voiceover("Wir benennen Matrizen typischerweise mit Großbuchstaben wie A, B oder C.")
  ]
  #only("2")[
    #voiceover("Die Größe einer Matrix wird durch die Anzahl der Zeilen und Spalten beschrieben. Wir sagen, eine Matrix ist m mal n, wobei m die Anzahl der Zeilen und n die Anzahl der Spalten ist.")
  ]
  #only("3")[
    #voiceover("Jedes Element in einer Matrix wird durch einen Kleinbuchstaben mit zwei Indizes bezeichnet. Der erste Index gibt die Zeile an, und der zweite die Spalte.")
  ]
  #only("4")[
    #voiceover("Zum Beispiel, in dieser 2 mal 2 Matrix B, steht b Index 1 1 für das Element in der ersten Zeile und ersten Spalte, b Index 1 2 ist in der ersten Zeile und zweiten Spalte, und so weiter.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung]
  #v(40pt)
  #only("1-")[📊 Matrizen: Rechteckige Zahlenarrays]
  #v(20pt)
  #only("2-")[🔢 Organisiert in Zeilen und Spalten]
  #v(20pt)
  #only("3-")[🏷️ Notation: Großbuchstaben, Größe m × n]
  #v(20pt)
  #only("4-")[🧮 Mächtiges Werkzeug in Mathematik und Anwendungen]

  #only("1")[
    #voiceover("Zusammenfassend sind Matrizen rechteckige Arrays von Zahlen, die uns helfen, Daten effizient zu organisieren und zu manipulieren.")
  ]
  #only("2")[
    #voiceover("Sie sind in Zeilen und Spalten strukturiert und bilden ein Gitter von Elementen.")
  ]
  #only("3")[
    #voiceover("Wir bezeichnen Matrizen mit Großbuchstaben und beschreiben ihre Größe anhand der Anzahl der Zeilen und Spalten.")
  ]
  #only("4")[
    #voiceover("Matrizen sind unglaublich mächtige Werkzeuge in der Mathematik, mit Anwendungen, die von der Lösung von Gleichungen bis hin zur Computergrafik und Wirtschaftsmodellierung reichen. In unseren nächsten Lektionen werden wir diese Anwendungen erkunden und lernen, wie man Operationen mit Matrizen durchführt.")
  ]
]