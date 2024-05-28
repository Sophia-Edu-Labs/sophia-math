#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Barwert (P V)]
#v(40pt)
#only("1-")[- Aktueller Wert zukünftigen Geldes 💰]
#v(20pt)
#only("2-")[- Abgezinst mit einem Zinssatz 📉]
#only("1")[
#voiceover("Der Barwert, oder P V, ist der aktuelle Wert eines zukünftigen Geldbetrags. Es ist der Wert dieses zukünftigen Geldes in heutigen Begriffen.")
]
#only("2")[
#voiceover("Um den Barwert zu berechnen, diskontieren wir den zukünftigen Betrag mit einem bestimmten Zinssatz. Dieser Zinssatz repräsentiert den Zeitwert des Geldes und das Risiko, das mit dem zukünftigen Cashflow verbunden ist.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[P V Formel]
#v(40pt)
#only("1-")[$ P V = F V / (1 + r)^n $]
#v(20pt)
#only("2-")[- $F V$: Zukunftswert 📆]
#v(10pt)
#only("3-")[- $r$: Zinssatz (pro Periode) 📈]
#v(10pt)
#only("4-")[- $n$: Anzahl der Perioden ⏳]
#only("1")[
#voiceover("Die Formel für den Barwert lautet: P V gleich F V geteilt durch die Größe eins plus r hoch n.")
]
#only("2")[
#voiceover("In dieser Formel steht F V für Zukunftswert. Dies ist der Geldbetrag, der zu einem zukünftigen Zeitpunkt empfangen oder bezahlt wird.")
]
#only("3")[
#voiceover("r repräsentiert den Zinssatz pro Periode. Dies ist der Satz, der verwendet wird, um den zukünftigen Cashflow abzuzinsen.")
]
#only("4")[
#voiceover("n ist die Anzahl der Perioden. Es ist die Anzahl der Perioden, normalerweise Jahre, zwischen jetzt und dem Zeitpunkt, an dem der zukünftige Betrag empfangen oder bezahlt wird.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
#only("1-")[Angenommen, Du erwartest, in 5 Jahren 1.000 \$ zu erhalten. Der Zinssatz beträgt 5% pro Jahr. Was ist der P V?]
#v(20pt)
#only("2-")[Gegeben:]
#v(10pt)
#only("2-")[- $F V = \$1,000$]
#v(10pt)
#only("2-")[- $r = 5\% = 0.05$]
#v(10pt)
#only("2-")[- $n = 5$ Jahre]
#v(20pt)
#only("3-")[$ P V = \$1,000 / (1 + 0.05)^5 $]
#v(10pt)
#only("4-")[$ P V ≈ \$783.53 $]
#only("1")[
#voiceover("Schauen wir uns ein Beispiel an. Angenommen, Du erwartest, in 5 Jahren 1.000 Dollar zu erhalten. Der Zinssatz beträgt 5% pro Jahr. Was ist der Barwert dieses zukünftigen Cashflows?")
]
#only("2")[
#voiceover("Wir haben den Zukunftswert von 1.000 Dollar, den Zinssatz von 5% oder 0,05, und die Anzahl der Perioden beträgt 5 Jahre.")
]
#only("3")[
#voiceover("Wenn wir diese Werte in unsere Formel einsetzen, erhalten wir: P V gleich 1.000 Dollar geteilt durch die Größe eins plus 0,05 hoch 5.")
]
#only("4")[
#voiceover("Wenn wir das berechnen, stellen wir fest, dass der Barwert ungefähr 783 Dollar und 53 Cent beträgt. Das bedeutet, dass der Erhalt von 1.000 Dollar in 5 Jahren dem Erhalt von etwa 783 Dollar und 53 Cent heute entspricht, vorausgesetzt, der jährliche Zinssatz beträgt 5%.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- P V: Aktueller Wert zukünftigen Geldes 💰]
#v(20pt)
#only("2-")[- Abgezinst mit einem Zinssatz 📉]
#v(20pt)
#only("3-")[- Formel: $ P V = F V / (1 + r)^n $]
#v(20pt)
#only("4-")[- Schlüsselkonzept in Finanzen und Investitionen 🏦💸]
#only("1")[
#voiceover("Zusammenfassend ist der Barwert der aktuelle Wert eines zukünftigen Geldbetrags.")
]
#only("2")[
#voiceover("Er wird berechnet, indem der zukünftige Betrag mit einem bestimmten Zinssatz abgezinst wird.")
]
#only("3")[
#voiceover("Die Formel für den Barwert lautet: P V gleich F V geteilt durch die Größe eins plus r hoch n.")
]
#only("4")[
#voiceover("Der Barwert ist ein Schlüsselkonzept in Finanzen und Investitionen. Er wird verwendet, um die Rentabilität von Investitionen zu bewerten und Entscheidungen darüber zu treffen, wo Ressourcen eingesetzt werden sollen.")
]
]