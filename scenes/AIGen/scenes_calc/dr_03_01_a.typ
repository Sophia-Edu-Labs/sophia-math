#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#slide()[
#text(size: 30pt, weight: "bold")[Wertebereich]
#v(40pt)
#only("2-")[#text()[$ f(x) = e^x + 1/x^2 $]]
#v(60pt)
#only("3-")[#text(size: 30pt, weight: "bold")[Ansatz]]
#v(40pt)
#only("4-")[- Grenzwerte für $x \to -infinity$]
#only("5-")[- Grenzwerte für $x \to 0$]
#only("6-")[- Grenzwerte für $x \to infinity$]
#only("7-")[- Wertebereich von $f(x)$]
#only("1")[
#voiceover("Wir suchen den Wertebereich")
]
#only("2")[
#voiceover("der Funktion f von x gleich e hoch x plus eins durch x Quadrat.")
]
#only("3")[
#voiceover("Um den Wertebereich zu finden, betrachten wir die Grenzwerte der Funktion für verschiedene Werte von x.")
]
#only("4")[
#voiceover("Zuerst untersuchen wir die Grenzwerte für x gegen minus unendlich,")
]
#only("5")[
#voiceover("dann die Grenzwerte für x gegen 0,")
]
#only("6")[
#voiceover("und schließlich die Grenzwerte für x gegen plus unendlich.")
]
#only("7")[
#voiceover("Aus diesen Grenzwerten leiten wir dann den Wertebereich von f ab.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Wertebereich]
#v(40pt)
#align(center)[$f(x)=e^x+1/x^2$]
#v(40pt)
#only("2-")[- $limits(lim)(x-> -infinity)e^x=0$]
#only("3-")[- $limits(lim)(x-> -infinity)1/x^2=0$]
#only("4-")[- $limits(lim)_(x-> -infinity)f(x)=0$]
#v(30pt)
#only("5-")[- $limits(lim)(x-> 0^+)e^x=1$]
#only("6-")[- $limits(lim)(x-> 0^+)1/x^2=infinity$]
#only("7-")[- $limits(lim)_(x-> 0^+)f(x)=infinity$]
#v(10pt)
#only("8-")[- $limits(lim)(x-> 0^-)e^x=1$]
#only("9-")[- $limits(lim)(x-> 0^-)1/x^2=infinity$]
#only("10-")[- $limits(lim)_(x-> 0^-)f(x)=infinity$]
#v(30pt)
#only("11-")[- $limits(lim)(x->infinity)e^x=infinity$]
#only("12-")[- $limits(lim)(x->infinity)1/x^2=0$]
#only("13-")[- $limits(lim)_(x->infinity)f(x)=infinity$]
#only("1")[#voiceover("Beginnen wir mit den Grenzwerten für x gegen minus unendlich.")]
#only("2")[#voiceover("Für x gegen minus unendlich geht e hoch x gegen null.")]
#only("3")[#voiceover("Und eins durch x quadrat geht auch gegen null.")]
#only("4")[#voiceover("Also geht f für x gegen minus unendlich gegen null plus null, also gegen null.")]
#only("5")[#voiceover("Nun betrachten wir die Grenzwerte für x gegen 0 von rechts.")]
#only("6")[#voiceover("Für x gegen 0 von rechts geht e hoch x gegen eins.")]
#only("7")[#voiceover("Und eins durch x quadrat geht gegen plus unendlich.")]
#only("8")[#voiceover("Für x gegen 0 von links geht e hoch x ebenfalls gegen eins.")]
#only("9")[#voiceover("Und eins durch x quadrat geht wieder gegen plus unendlich.")]
#only("10")[#voiceover("Also geht f sowohl für x gegen 0 von rechts als auch von links gegen plus unendlich.")]
#only("11")[#voiceover("Schließlich betrachten wir die Grenzwerte für x gegen plus unendlich.")]
#only("12")[#voiceover("Für x gegen plus unendlich geht e hoch x gegen plus unendlich.")]
#only("13")[#voiceover("Und eins durch x quadrat geht gegen null. Also geht f für x gegen plus unendlich gegen plus unendlich plus null, also gegen plus unendlich.")]
#only("14")[#voiceover("Fassen wir zusammen: f geht gegen null für x gegen minus unendlich und gegen plus unendlich für x gegen 0 und x gegen plus unendlich. Dazwischen ist f stetig. Also ist der Wertebereich von f die Menge aller reellen Zahlen größer oder gleich null.")]
]
#slide()[
#text(size: 30pt, weight: "bold")[Wertebereich]
#v(40pt)
$f(x) = e^x + 1/x^2$
#v(40pt)
#text(size: 26pt)[Wertebereich: $[0, infinity)$]
#v(20pt)
#text(size: 22pt)[D.h. alle reellen Zahlen $\geq 0$]
]