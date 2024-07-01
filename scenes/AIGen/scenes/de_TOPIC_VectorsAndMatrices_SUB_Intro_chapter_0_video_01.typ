#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Einführung in Vektoren]
  #v(40pt)

  #only("1-")[📦 Stell dir vor, du packst für eine Reise...]
  #v(20pt)
  #only("2-")[🧳 Gewicht und Größe sind wichtig]
  #v(20pt)
  #only("3-")[🔢 Eine Zahl reicht nicht aus]
  #v(20pt)
  #only("4-")[➡️ Hier kommen Vektoren ins Spiel: "mehrdimensionale Zahlen"]

  #only("1")[
    #voiceover("Beginnen wir unsere Reise in die Welt der Vektoren mit einem einfachen Szenario. Stell dir vor, du packst für eine Reise.")
  ]
  #only("2")[
    #voiceover("Beim Packen musst du sowohl das Gewicht als auch die Größe deines Gepäcks berücksichtigen. Das sind zwei separate, aber zusammenhängende Informationen.")
  ]
  #only("3")[
    #voiceover("In diesem Fall reicht es nicht aus, nur eine Zahl zu verwenden, um dein Gepäck zu beschreiben. Du brauchst mindestens zwei: eine für das Gewicht und eine für die Größe.")
  ]
  #only("4")[
    #voiceover("Hier kommen Vektoren ins Spiel. Vektoren sind wie 'mehrdimensionale Zahlen', die mehrere zusammenhängende Größen gleichzeitig darstellen können.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Was sind Vektoren?]
  #v(40pt)

  #only("1-")[➡️ "Mehrdimensionale Zahlen"]
  #v(20pt)
  #only("2-")[📏 Dargestellt als Pfeile oder Koordinaten]
  #v(20pt)
  #only("3-")[🧳 Beispiel: Gepäckvektor $v = (20, 50)$]
  #v(20pt)
  #only("4-")[📊 Dimension = Anzahl der Komponenten]

  #only("1")[
    #voiceover("Was genau sind Vektoren? Wie bereits erwähnt, sind Vektoren 'mehrdimensionale Zahlen'.")
  ]
  #only("2")[
    #voiceover("Sie können visuell als Pfeile oder mathematisch als eine Liste von Koordinaten dargestellt werden.")
  ]
  #only("3")[
    #voiceover("Kehren wir zu unserem Gepäckbeispiel zurück. Wir könnten ein Gepäckstück als Vektor $v = (20, 50)$ darstellen, wobei 20 das Gewicht in Kilogramm und 50 die Größe in Litern repräsentiert.")
  ]
  #only("4")[
    #voiceover("Die Dimension eines Vektors ist einfach die Anzahl der Komponenten, die er hat. In unserem Gepäckbeispiel haben wir einen zweidimensionalen Vektor, weil er zwei Komponenten hat: Gewicht und Größe.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Vektoren addieren]
  #v(40pt)

  #only("1-")[➕ Entsprechende Komponenten addieren]
  #v(20pt)
  #only("2-")[🧳 Gepäck A: $(15, 40)$]
  #v(10pt)
  #only("2-")[🧳 Gepäck B: $(10, 30)$]
  #v(20pt)
  #only("3-")[🧳🧳 Gesamt: $(15+10, 40+30) = (25, 70)$]

  #only("1")[
    #voiceover("Lass uns nun lernen, wie man Vektoren addiert. Wenn wir Vektoren addieren, addieren wir einfach ihre entsprechenden Komponenten.")
  ]
  #only("2")[
    #voiceover("Angenommen, wir haben zwei Gepäckstücke. Gepäck A wird durch den Vektor $(15, 40)$ und Gepäck B durch $(10, 30)$ dargestellt.")
  ]
  #only("3")[
    #voiceover("Um das Gesamtgewicht zu finden, addieren wir die Gewichte: fünfzehn plus zehn gleich fünfundzwanzig, und wir addieren die Größen: vierzig plus dreißig gleich siebzig. Der Gesamtvektor ist also $(25, 70)$.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung]
  #v(40pt)

  #only("1-")[➡️ Vektoren: "mehrdimensionale Zahlen"]
  #v(20pt)
  #only("2-")[📏 Dargestellt als Pfeile oder Koordinaten]
  #v(20pt)
  #only("3-")[➕ Addieren durch Summieren der entsprechenden Komponenten]
  #v(20pt)
  #only("4-")[📊 Dimension = Anzahl der Komponenten]

  #only("1")[
    #voiceover("Lass uns zusammenfassen, was wir gelernt haben. Vektoren sind 'mehrdimensionale Zahlen', die mehrere zusammenhängende Größen gleichzeitig darstellen können.")
  ]
  #only("2")[
    #voiceover("Sie können als Pfeile visualisiert oder als eine Liste von Koordinaten geschrieben werden.")
  ]
  #only("3")[
    #voiceover("Um Vektoren zu addieren, summieren wir ihre entsprechenden Komponenten.")
  ]
  #only("4")[
    #voiceover("Und denk daran, die Dimension eines Vektors ist einfach die Anzahl der Komponenten, die er hat. Dieses mächtige Konzept ermöglicht es uns, komplexe Informationen auf eine prägnante Weise darzustellen und zu manipulieren.")
  ]
]