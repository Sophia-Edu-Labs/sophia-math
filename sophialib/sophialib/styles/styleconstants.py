from pathlib import Path
from manim import *
import urllib.request
import manimpango

SOPHIALIB_FONT_FOLDER = Path(__file__).parent / "fonts"
SOPHIALIB_MEDIA_FOLDER = Path(__file__).parent / "media"

#Colors for lines, points etc.
c1 = BLACK
c2 = RED
c3 = BLUE
c4 = ORANGE
c5 = PURPLE
c6 = GREEN

#Colors for the Text
c1t = BLACK
c2t = GRAY_E
c3t = GRAY_D

fs1 = 48
fs2 = 36
fs3 = 24
fs4 = 18
fs5 = 12
#Fonts
manimpango.register_font(str(SOPHIALIB_FONT_FOLDER / "Futura.ttc"))
manimpango.register_font(str(SOPHIALIB_FONT_FOLDER / "FiraSans-Light.ttf"))
font_0 = ""
font_1 = "Futura"
font_2 = "Fira Sans"

#Colors for the Background, delimiting Rectangles, Orientation lines and the Mathgrid
c_bg = rgb_to_color([255/255, 252/255, 245/255])
c_rects = BLACK
c_or = GREEN
c_mathgrid = GRAY_B

#Location for the pointers etc. to rest
outloc = [-3.5,0,0]

#Offset for the pointers etc.
fg = np.array([0,0,1000])

class EmojiSVGMobject(SVGMobject):
    def __init__(self, emoji, **kwargs):
        emoji_code = "-".join(f"{ord(c):x}" for c in emoji)
        url = f"https://raw.githubusercontent.com/twitter/twemoji/master/assets/svg/{emoji_code}.svg"
        path_svg = Path.cwd() / f"{emoji_code}.svg"
        urllib.request.urlretrieve(url, path_svg)
        SVGMobject.__init__(self, str(path_svg), **kwargs)
        path_svg.unlink()  # delete downloaded svg again locally


# emojifinger = EmojiSVGMobject("👆🏽").scale(0.2)
ballpen = ImageMobject(str(SOPHIALIB_MEDIA_FOLDER / "imageressources" / "ballpen.png")).scale(0.25).rotate(270*DEGREES)
ballpen_offset = np.array([0.45, -0.45, 0])
finger = ImageMobject(str(SOPHIALIB_MEDIA_FOLDER / "imageressources" / "finger.png")).scale(0.1)
mouse = ImageMobject(str(SOPHIALIB_MEDIA_FOLDER / "imageressources" / "mouse.png")).scale(0.1)
pencil = ImageMobject(str(SOPHIALIB_MEDIA_FOLDER / "imageressources"/"pencil.png")).scale(0.25).rotate(310*DEGREES).move_to([0,0,0])
pencil_offset = np.array([0.365, -0.22, 0])
backhand = ImageMobject(str(SOPHIALIB_MEDIA_FOLDER / "imageressources" / "backhand.png")).scale(0.5).rotate(-20*DEGREES).move_to([0,0,0])
backhand_offset = np.array([-0.18, 0.04, 0])

c_bg_opacity = .3
c_fg_opacity = 1

# nums = ["Null", "Eins", "Zwei", "Drei", "Vier", "Fünf", "Sechs", "Sieben", "Acht", "Neun",
# "Zehn", "Elf", "Zwölf", "Dreizehn", "Vierzehn", "Fünfzehn", "Sechzehn", "Siebzehn", "Achtzehn", "Neunzehn",
# "Zwanzig", "Einundzwanzig", "Zweiundzwanzig", "Dreiundzwanzig", "Vierundzwanzig", "Fünfundzwanzig", "Sechsundzwanzig",
# "Siebenundzwanzig", "Achtundzwanzig", "Neunundzwanzig", "Dreißig", "Einunddreißig", "Zweiunddreißig", "Dreiunddreißig",
# "Vierunddreißig", "Fünfunddreißig", "Sechsunddreißig", "Siebenunddreißig", "Achtunddreißig", "Neununddreißig",
# "Vierzig", "Einundvierzig", "Zweiundvierzig", "Dreiundvierzig", "Vierundvierzig", "Fünfundvierzig", "Sechsundvierzig",
# "Siebenundvierzig", "Achtundvierzig", "Neunundvierzig", "Fünfzig", "Einundfünfzig", "Zweiundfünfzig", "Dreiundfünfzig",
# "Vierundfünfzig", "Fünfundfünfzig", "Sechsundfünfzig", "Siebenundfünfzig", "Achtundfünfzig", "Neunundfünfzig",
# "Sechzig", "Einundsechzig", "Zweiundsechzig", "Dreiundsechzig", "Vierundsechzig", "Fünfundsechzig", "Sechsundsechzig",
# "Siebenundsechzig", "Achtundsechzig", "Neunundsechzig", "Siebzig", "Einundsiebzig", "Zweiundsiebzig", "Dreiundsiebzig",
# "Vierundsiebzig", "Fünfundsiebzig", "Sechsundsiebzig", "Siebenundsiebzig", "Achtundsiebzig", "Neunundsiebzig",
# "Achtzig", "Einundachtzig", "Zweiundachtzig", "Dreiundachtzig", "Vierundachtzig", "Fünfundachtzig", "Sechsundachtzig",
# "Siebenundachtzig", "Achtundachtzig", "Neunundachtzig", "Neunzig", "Einundneunzig", "Zweiundneunzig", "Dreiundneunzig",
# "Vierundneunzig", "Fünfundneunzig", "Sechsundneunzig", "Siebenundneunzig", "Achtundneunzig", "Neunundneunzig",
# "Hundert"]

nums = ["Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine",
        "Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen",
        "Twenty", "Twenty-One", "Twenty-Two", "Twenty-Three", "Twenty-Four", "Twenty-Five", "Twenty-Six",
        "Twenty-Seven", "Twenty-Eight", "Twenty-Nine", "Thirty", "Thirty-One", "Thirty-Two", "Thirty-Three",
        "Thirty-Four", "Thirty-Five", "Thirty-Six", "Thirty-Seven", "Thirty-Eight", "Thirty-Nine",
        "Forty", "Forty-One", "Forty-Two", "Forty-Three", "Forty-Four", "Forty-Five", "Forty-Six",
        "Forty-Seven", "Forty-Eight", "Forty-Nine", "Fifty", "Fifty-One", "Fifty-Two", "Fifty-Three",
        "Fifty-Four", "Fifty-Five", "Fifty-Six", "Fifty-Seven", "Fifty-Eight", "Fifty-Nine",
        "Sixty", "Sixty-One", "Sixty-Two", "Sixty-Three", "Sixty-Four", "Sixty-Five", "Sixty-Six",
        "Sixty-Seven", "Sixty-Eight", "Sixty-Nine", "Seventy", "Seventy-One", "Seventy-Two", "Seventy-Three",
        "Seventy-Four", "Seventy-Five", "Seventy-Six", "Seventy-Seven", "Seventy-Eight", "Seventy-Nine",
        "Eighty", "Eighty-One", "Eighty-Two", "Eighty-Three", "Eighty-Four", "Eighty-Five", "Eighty-Six",
        "Eighty-Seven", "Eighty-Eight", "Eighty-Nine", "Ninety", "Ninety-One", "Ninety-Two", "Ninety-Three",
        "Ninety-Four", "Ninety-Five", "Ninety-Six", "Ninety-Seven", "Ninety-Eight", "Ninety-Nine",
        "Hundred"]


def get_num(x, negation="negative", pos=None):
    def get_decNum(f):
        if int(f)==f:
            return nums[int(f)]
        # Convert float to string and split on decimal point
        int_part, _, frac_part = str(f).partition('.')
        
        # Convert integer part to words
        int_words = nums[int(int_part)]
        
        # Convert fractional part to words
        frac_words = [nums[int(digit)] for digit in frac_part]
        
        # Combine integer and fractional words with the "point" word in between
        return ' '.join([int_words] + ["point"] + frac_words)
    if x>=0:
        if pos is not None:
            return pos + " " + get_decNum(x)
        return get_decNum(x)
    else:
        return negation + " " + get_decNum(-x)
    
def get_texNum(x):
    if x>=0:
        return "+"+str(x)
    return str(x)

# nums_ordinal = ["Nullte", "Erste", "Zweite", "Dritte", "Vierte", "Fünfte", "Sechste", "Siebte", "Achte", "Neunte",
#                "Zehnte", "Elfte", "Zwölfte", "Dreizehnte", "Vierzehnte", "Fünfzehnte", "Sechzehnte", "Siebzehnte", "Achtzehnte", "Neunzehnte",
#                "Zwanzigste", "Einundzwanzigste", "Zweiundzwanzigste", "Dreiundzwanzigste", "Vierundzwanzigste", "Fünfundzwanzigste", "Sechsundzwanzigste",
#                "Siebenundzwanzigste", "Achtundzwanzigste", "Neunundzwanzigste", "Dreißigste", "Einunddreißigste", "Zweiunddreißigste", "Dreiunddreißigste",
#                "Vierunddreißigste", "Fünfunddreißigste", "Sechsunddreißigste", "Siebenunddreißigste", "Achtunddreißigste", "Neununddreißigste",
#                "Vierzigste", "Einundvierzigste", "Zweiundvierzigste", "Dreiundvierzigste", "Vierundvierzigste", "Fünfundvierzigste", "Sechsundvierzigste",
#                "Siebenundvierzigste", "Achtundvierzigste", "Neunundvierzigste", "Fünfzigste", "Einundfünfzigste", "Zweiundfünfzigste", "Dreiundfünfzigste",
#                "Vierundfünfzigste", "Fünfundfünfzigste", "Sechsundfünfzigste", "Siebenundfünfzigste", "Achtundfünfzigste", "Neunundfünfzigste",
#                "Sechzigste", "Einundsechzigste", "Zweiundsechzigste", "Dreiundsechzigste", "Vierundsechzigste", "Fünfundsechzigste", "Sechsundsechzigste",
#                "Siebenundsechzigste", "Achtundsechzigste", "Neunundsechzigste", "Siebzigste", "Einundsiebzigste", "Zweiundsiebzigste", "Dreiundsiebzigste",
#                "Vierundsiebzigste", "Fünfundsiebzigste", "Sechsundsiebzigste", "Siebenundsiebzigste", "Achtundsiebzigste", "Neunundsiebzigste",
#                "Achtzigste", "Einundachtzigste", "Zweiundachtzigste", "Dreiundachtzigste", "Vierundachtzigste", "Fünfundachtzigste", "Sechsundachtzigste",
#                "Siebenundachtzigste", "Achtundachtzigste", "Neunundachtzigste", "Neunzigste", "Einundneunzigste", "Zweiundneunzigste", "Dreiundneunzigste",
#                "Vierundneunzigste", "Fünfundneunzigste", "Sechsundneunzigste", "Siebenundneunzigste", "Achtundneunzigste", "Neunundneunzigste",
#                "Hundertste"]


nums_ordinal = ["Zeroth", "First", "Second", "Third", "Fourth", "Fifth", "Sixth", "Seventh", "Eighth", "Ninth",
               "Tenth", "Eleventh", "Twelfth", "Thirteenth", "Fourteenth", "Fifteenth", "Sixteenth", "Seventeenth", "Eighteenth", "Nineteenth",
               "Twentieth", "Twenty-First", "Twenty-Second", "Twenty-Third", "Twenty-Fourth", "Twenty-Fifth", "Twenty-Sixth",
               "Twenty-Seventh", "Twenty-Eighth", "Twenty-Ninth", "Thirtieth", "Thirty-First", "Thirty-Second", "Thirty-Third",
               "Thirty-Fourth", "Thirty-Fifth", "Thirty-Sixth", "Thirty-Seventh", "Thirty-Eighth", "Thirty-Ninth",
               "Fortieth", "Forty-First", "Forty-Second", "Forty-Third", "Forty-Fourth", "Forty-Fifth", "Forty-Sixth",
               "Forty-Seventh", "Forty-Eighth", "Forty-Ninth", "Fiftieth", "Fifty-First", "Fifty-Second", "Fifty-Third",
               "Fifty-Fourth", "Fifty-Fifth", "Fifty-Sixth", "Fifty-Seventh", "Fifty-Eighth", "Fifty-Ninth",
               "Sixtieth", "Sixty-First", "Sixty-Second", "Sixty-Third", "Sixty-Fourth", "Sixty-Fifth", "Sixty-Sixth",
               "Sixty-Seventh", "Sixty-Eighth", "Sixty-Ninth", "Seventieth", "Seventy-First", "Seventy-Second", "Seventy-Third",
               "Seventy-Fourth", "Seventy-Fifth", "Seventy-Sixth", "Seventy-Seventh", "Seventy-Eighth", "Seventy-Ninth",
               "Eightieth", "Eighty-First", "Eighty-Second", "Eighty-Third", "Eighty-Fourth", "Eighty-Fifth", "Eighty-Sixth",
               "Eighty-Seventh", "Eighty-Eighth", "Eighty-Ninth", "Ninetieth", "Ninety-First", "Ninety-Second", "Ninety-Third",
               "Ninety-Fourth", "Ninety-Fifth", "Ninety-Sixth", "Ninety-Seventh", "Ninety-Eighth", "Ninety-Ninth",
               "Hundredth"]
