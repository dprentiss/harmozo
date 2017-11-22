\header {
    title = "TOULON"
}

global = {
    \key f \major
    \time 4/4
}

sopranoMusic = \relative c' {
    f2 g4 a bes2 a g4 f f e f1 \break
    a2 bes4 c d2 c bes4 a g f g1 \break
    c2 c4 bes a2 g a4 c c b c1 \break
    a2 g4 f e f  g bes a2 g f1
}

altoMusic = \relative c' {
    c2 e4 f f2 f e4 d d c c1
    f2 f4 f f2 f e4 f d d c1
    c2 c4 e f2 g f4 g g g e1
    f2 e4 d cis d d g f2 e f1
}

tenorMusic = \relative c' {
    a2 c4 c d2 c c4 a bes g a1
    c2 bes4 a bes2 a bes4 c bes a c1
    f,2 f4 g a2 c c4 c d d c1
    f,4 c' c a a a bes d c2. bes4 a1
}

bassMusic = \relative c {
    f2 c4 f bes,2 f' c4 d bes c f,1
    f'2 d4 c bes2 f' g4 f bes, d c1
    a2 a4 c f2 e f4 e g g, c1
    f2 c4 d a d bes g c2 c2 f,1
    \bar "|."
}

verseOne = \lyricmode {
    \set stanza = #"1. "
    Lord you a -- lone are gen -- er -- ous and good;
    in grace and mer -- cy e'er you free -- ly give.
    Teach us your truth so oft mis -- un -- der -- stood:
    Gifts in like mea -- sure giv'n -- shall we re -- ceive.
}

verseTwo = \lyricmode {
    \set stanza = #"2. "
    Fa -- ther, whose boun -- ty all cre -- a -- tion shows;
    Christ, by whose will -- ing sa -- cri -- fice -- we live;
    Spi -- rit, from whom all life in full -- ness flows:
    To you with grate -- ful hearts our -- selves we give.
}

\score{
    \new PianoStaff <<
        \new Staff = "women" <<
            \new Voice = "sopranos" { \voiceOne << \global \sopranoMusic >> }
            \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
        >>
        \new Staff = "men" <<
            \clef bass
            \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
            \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
        >>
    >>

    \layout{
        indent = #0
    }
    \midi{}
}
