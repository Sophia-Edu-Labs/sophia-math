#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Überblick: Matrizen 📊]
  #v(40pt)
  #only("1-")[- Matrizen sind grundlegend in der linearen Algebra 🧮]
  #only("2-")[- Sie repräsentieren lineare Transformationen 🔄]
  #only("3-")[- Lass uns ihre wichtigsten Eigenschaften überprüfen 🔍]

  #only("1")[
    #voiceover("Lass uns Matrizen überprüfen, die grundlegende Werkzeuge in der linearen Algebra sind.")
  ]
  #only("2")[
    #voiceover("Matrizen sind besonders nützlich zur Darstellung linearer Transformationen.")
  ]
  #only("3")[
    #voiceover("Wir werden ihre wichtigsten Eigenschaften und ihre Bedeutung überprüfen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Grundlagen der Matrix]
  #v(40pt)
  #only("1-")[- Rechteckiges Zahlenarray 🔢]
  #v(20pt)
  #only("2-")[
    #align(center)[
      $A = mat(
        a, b;
        c, d
      )$
    ]
  ]
  #v(20pt)
  #only("3-")[- Zeilen und Spalten 📏]
  #v(20pt)
  #only("4-")[- Dimensionen: m × n (m Zeilen, n Spalten) 📐]

  #only("1")[
    #voiceover("Eine Matrix ist im Wesentlichen ein rechteckiges Zahlenarray.")
  ]
  #only("2")[
    #voiceover("Hier ist eine einfache Zwei-mal-zwei-Matrix. Wir haben a und b in der ersten Zeile und c und d in der zweiten Zeile.")
  ]
  #only("3")[
    #voiceover("Matrizen sind in Zeilen und Spalten organisiert. Jede horizontale Linie ist eine Zeile, und jede vertikale Linie ist eine Spalte.")
  ]
  #only("4")[
    #voiceover("Die Dimensionen einer Matrix werden durch die Anzahl der Zeilen und Spalten beschrieben. Zum Beispiel hat eine m-mal-n-Matrix m Zeilen und n Spalten.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Anwendungen der Matrix]
  #v(40pt)
  #only("1-")[- Lineare Transformationen 🔄]
  #v(20pt)
  #only("2-")[- Gleichungssysteme 📝]
  #v(20pt)
  #only("3-")[- Datenorganisation 📊]
  #v(20pt)
  #only("4-")[- Computergrafik 🖥️]

  #only("1")[
    #voiceover("Eine der wichtigsten Anwendungen von Matrizen ist die Darstellung linearer Transformationen. Diese sind Funktionen, die Vektoraddition und Skalarmultiplikation erhalten.")
  ]
  #only("2")[
    #voiceover("Matrizen werden auch verwendet, um lineare Gleichungssysteme effizient darzustellen und zu lösen.")
  ]
  #only("3")[
    #voiceover("In der Datenwissenschaft werden Matrizen verwendet, um große Datensätze zu organisieren und zu manipulieren.")
  ]
  #only("4")[
    #voiceover("In der Computergrafik werden Matrizen verwendet, um Transformationen wie Rotation, Skalierung und Translation von Objekten durchzuführen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung 📝]
  #v(40pt)
  #only("1-")[- Matrizen: rechteckige Zahlenarrays 📊]
  #v(20pt)
  #only("2-")[- Repräsentieren lineare Transformationen 🔄]
  #v(20pt)
  #only("3-")[- Organisiert in Zeilen und Spalten 📏]
  #v(20pt)
  #only("4-")[- Wichtig in verschiedenen Bereichen 🌐]

  #only("1")[
    #voiceover("Zusammenfassend sind Matrizen rechteckige Zahlenarrays.")
  ]
  #only("2")[
    #voiceover("Sie werden hauptsächlich verwendet, um lineare Transformationen darzustellen.")
  ]
  #only("3")[
    #voiceover("Matrizen sind in Zeilen und Spalten organisiert, und ihre Größe wird durch ihre Dimensionen beschrieben.")
  ]
  #only("4")[
    #voiceover("Das Verständnis von Matrizen ist in verschiedenen Bereichen entscheidend, einschließlich Mathematik, Physik, Informatik und Datenanalyse.")
  ]
]