#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Fehlende Dimensionen eines Quaders finden]
  #v(20pt)
  
  #only("1-")[#align(center)[#image("https://i.imgur.com/QZQThxN.png", width: 200pt)]]
  
  #only("2-")[- Gegeben: Oberfläche]
  #v(10pt)
  #only("3-")[- Gesucht: Fehlende Dimension]
  #v(10pt)
  #only("4-")[- Anwendung in der Praxis: 📦 Verpackung]

  #only("1")[
    #voiceover("Stell dir vor, du entwirfst eine Schachtel für ein neues Produkt. Du weißt, wie groß die Oberfläche der Schachtel sein soll, aber du bist dir bei einer der Dimensionen nicht sicher. Wie können wir dieses Problem lösen?")
  ]
  
  #only("2")[
    #voiceover("In diesem Szenario haben wir die Oberfläche eines Quaders gegeben, der eine rechteckige Schachtel ist.")
  ]
  
  #only("3")[
    #voiceover("Unsere Aufgabe ist es, eine fehlende Dimension des Quaders mit diesen Informationen zu finden.")
  ]
  
  #only("4")[
    #voiceover("Dieses Problem hat praktische Anwendungen, insbesondere im Verpackungsdesign, wo der Materialverbrauch optimiert werden muss.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Formel für die Oberfläche]
  #v(20pt)
  
  #only("1-")[$ "SA" = 2(l w + l h + w h) $]
  #v(20pt)
  #only("2-")[Wo:]
  #only("3-")[- $"SA"$: Oberfläche]
  #only("4-")[- $l$: Länge]
  #only("5-")[- $w$: Breite]
  #only("6-")[- $h$: Höhe]

  #only("1")[
    #voiceover("Um dieses Problem zu lösen, müssen wir uns an die Formel für die Oberfläche eines Quaders erinnern. Die Oberfläche ist gleich zwei mal die Summe aus Länge mal Breite, Länge mal Höhe und Breite mal Höhe.")
  ]
  
  #only("2")[
    #voiceover("Lass uns aufschlüsseln, was jede Variable in dieser Formel darstellt.")
  ]
  
  #only("3")[
    #voiceover("SA steht für Oberfläche, was in unserem Problem gegeben ist.")
  ]
  
  #only("4")[
    #voiceover("l steht für die Länge des Quaders,")
  ]
  
  #only("5")[
    #voiceover("w steht für die Breite,")
  ]
  
  #only("6")[
    #voiceover("und h steht für die Höhe.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Lösen für eine fehlende Dimension]
  #v(20pt)
  
  #only("1-")[1. Beginne mit der SA-Formel]
  #only("2-")[2. Setze bekannte Werte ein]
  #only("3-")[3. Umstellen, um Unbekannte zu isolieren]
  #only("4-")[4. Gleichung lösen]

  #only("1")[
    #voiceover("Jetzt gehen wir den Prozess durch, um eine fehlende Dimension zu finden. Zuerst beginnen wir mit unserer Formel für die Oberfläche.")
  ]
  
  #only("2")[
    #voiceover("Als nächstes setzen wir die bekannten Werte in die Formel ein. Dazu gehören die gegebene Oberfläche und alle bekannten Dimensionen.")
  ]
  
  #only("3")[
    #voiceover("Dann stellen wir die Gleichung um, um die unbekannte Dimension zu isolieren.")
  ]
  
  #only("4")[
    #voiceover("Schließlich lösen wir die resultierende Gleichung, um den Wert der fehlenden Dimension zu finden.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung]
  #v(20pt)
  
  #only("1-")[- Problem: Fehlende Dimension bei gegebener Oberfläche finden]
  #only("2-")[- Verwende die SA-Formel: $ "SA" = 2(l w + l h + w h) $]
  #only("3-")[- Einsetzen, umstellen, lösen]
  #only("4-")[- Praktische Anwendung in der Verpackung 📦]

  #only("1")[
    #voiceover("Zusammenfassend haben wir das Problem vorgestellt, eine fehlende Dimension eines Quaders zu finden, wenn die Oberfläche gegeben ist.")
  ]
  
  #only("2")[
    #voiceover("Wir verwenden die Formel für die Oberfläche, die die Oberfläche mit der Länge, Breite und Höhe des Quaders in Beziehung setzt.")
  ]
  
  #only("3")[
    #voiceover("Der Prozess umfasst das Einsetzen bekannter Werte, das Umstellen der Gleichung und das Lösen für die unbekannte Dimension.")
  ]
  
  #only("4")[
    #voiceover("Dieses Konzept hat praktische Anwendungen, insbesondere in Bereichen wie dem Verpackungsdesign, wo die Optimierung des Materialverbrauchs entscheidend ist.")
  ]
]