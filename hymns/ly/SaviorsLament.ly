\version "2.18.2"
\paper {
  #(set-paper-size "letter")
}
\header {
  title = "The Savior's Lament"
  composer = "Michael Denham"
  tagline = ""
}

global = {
  \key ees \major
  \time 4/4
  \override BreathingSign.Y-offset = #2.6
  \override BreathingSign.text =
  \markup { \musicglyph #"scripts.tickmark" }
}

sopranoMusic = \relative c'' {
  s1 s1 s1 s1 s1 s1 s1 s1 s1 s1
  b2\rest b8\rest g^"Tutti" ees' b
  c2 ~ c8 g ees' g,
  bes8. aes16 aes4 ~ aes8 f g aes
  g2 ~ g8 f ees f
  <ees ~ g ~>2 <ees g>8
  g8 ees' b
                                % 16
  c2 ~ c8 g c g
  <bes f>8. <aes f>16 <aes~ f~>4 <aes f>8 f g aes
  g2 ~ g8 f ees d
                                % 19 first ending
  c2.\fermata \skip 4
  bes'4. bes8 bes4 c8. aes16
  aes4 g2 \skip8 bes8
  bes4 d8 c bes4. aes8
  g2~ g8 g g d'
  ees4 ees8. ees16 ees4 ees8 ees
                                % 25
  ees4 c4~ c8 c bes aes
  g2~ g8 g g aes
  g2 \skip8 g8 ees' b
                                % 28 second ending
  c,2.\fermata bes'4^"(ten.)"
  bes4. bes8 bes4 c8. aes16
  aes4 bes2 \skip 8 bes8
                                % 31
  bes4 d8 c8 bes4. aes8
  g2~ g8 g g d'
  ees4 ees8. ees16 ees4 ees4
                                % 34
  ees4 c4~c8 c bes aes
  bes2~ bes8 d8 c8 bes8
  g2~ g8 g e' b
}

altoMusic = \relative c'' {

  b2\rest b8\rest g^"Solo (or women only)"
  ees' b c2^~ c8 g c g bes8. aes16 aes4^~ aes8 \breathe
  f g aes g2^~ g8 f ees f g2^~ g8 \breathe
  g ees' b c2^~ c8
  g8 c g bes8. aes16 aes4^~ aes8 \breathe
  f g aes g2^~ g8 f ees d c2^\fermata  b'2\rest

  b1\rest b2\rest b8\rest g g g
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \mark \markup { \musicglyph #"scripts.segno" }
  \repeat volta 2 {
    ees2. ~ ees8 ees8
    c8. c16 c2 f4
    b,4 b2 b8 b
    c2 ~ c8 g' g g
    ees2. ~ ees8 ees8
    c8. c16 c2 f4
    b,4 b2 b4
  }
  \alternative {
    {
                                % 19 first ending
      c2. bes'4
      d,4. f8 d4 d4
      ees4 ees2 b'8\rest bes8
                                % 22
      d,4. f8 d4. d8
      d4 bes4 d4. f8
      ees4 g8. g16 aes4 aes8 aes
                                % 25
      a4 a~ a8 c fis, aes
      g4( ees4.) ees8 ees ees
      d2 b'8\rest g8 g g
    }
    {
                                % 28
      c,2. bes'4
      d,4. f8 d4 d
      ees4 ees2 b'8\rest bes8
                                % 31
      d,4 f bes4. d,8
      d4 b4 d4. f8
      ees4 g8. g16 aes4 aes4
                                % 34
      a4 a4~ a8 c bes aes
      g4(ees4.) ees8 ees ees
      d2~ d8 g8 g g
    }
  }
                                % 37
  % ees2~ ees8 ees ees ees
  ees2~ ees8 ees ees ees
}

tenorMusic = \relative c {
  \repeat unfold 19 d1\rest
  d2\rest f4 aes bes bes2 d,4\rest
  f4 bes d bes
  b d, g b
  c4 c8. c16 c4 c8 c
                                % 25
  c4 ees~ ees8 d,8\rest d4\rest
  ees'4( c4.) c8 c c
  b2 d,2\rest
                                %28 second ending
  d1\rest
}

bassMusic = \relative c {
  \repeat unfold 19 \skip 1
  \skip 2 f4 f ees bes'2 \skip 4
  bes,4 d f4. f8
  g4 g, b c
  c4 c'8. c16 c4 c,8 c
                                % 25
  ees4 fis~ fis8 \skip 4.
  g4 g2 g4
  <g g,>2 \skip 2
                                % 28 second ending
  \skip 1
}

pianoTreble = \relative c'' {
  b1\rest b1\rest b1\rest b1\rest b1\rest b1\rest b1\rest b1\rest b1\rest
  r8 r16 b' c( fis, g d ees bes c fis,) g( d ees b)
  c2. b4
  <c ees>4 <c ees>2 <c ees>4
                                %13
  <aes c> <aes c>2 <aes c>4
  <b d> <b d>2 ees8 <b d>8
  <c ees>4 <c ees>2 b4
                                %16
  <c ees>4 <c ees>2 <c ees>4
  <aes c> <aes c>2 <aes c>4
  <b g'>4 <b g'>2 <b d>4
                                %19 first ending
  <c g ees>4 <c g ees>2\fermata r4
  bes8 d f d f4 aes~ aes8 bes, g' bes, ees bes g' bes
  bes8 d, f d bes' d, f aes
  g8 b, d b d4 f4
  <ees c'>8 c <ees c'>8 c <ees c'>8 c <ees c'>8 c
                                % 25
  <ees c'>8 c <ees~ a~>4 <ees a> r4
  <ees g>8 c <ees g>2 <c ees g>4
  g'8 b,~ <d b>2 b8^"(col canto)" d
                                % 28 second ending
  <ees, g c>4 <ees g c>2\fermata r4
  bes'8 d f d f4 aes~ aes8 bes, g' bes, ees bes g' bes
                                % 31
  bes8 d, f d bes' d, f aes
  g8 b, d b d4 f4
  <ees c'>8 c <ees c'>8 c <ees c'>8 c <ees c'>8 c
                                % 34
  <ees c'>8 c <ees~ a~>4 <ees a> r4
  <ees g>8 c <ees g>2 <c ees g>4
  g'8 b,~ <d b>2\fermata b8^"(col canto)" d
                                % 37
  <c ees>4 <c ees>2 <c ees>4
  <aes c> <aes c>2 <aes c>4
  <b d> <b d>2 ees8 <b d>8
                                % 40
  <c ees>4 <c ees>2 b4
  <c ees>4 <c ees>2 <c ees>4
  <aes c> <aes c>2 <aes c>4
                                % 43
  <b g'>4 <b g'>4. <b d>8 <b ees>8<b f'>8
}

pianoBass = \relative c {
  d1\rest d1\rest d1\rest d1\rest d1\rest d1\rest d1\rest d1\rest d1\rest d1\rest
  r4 <c ees g>2 g'4
  \set tieWaitForNote = ##t
  c,8 ~ g' ~ <c, g'>2.
  c8 ~ f ~ <c f>2.
  g8 ~ d' ~ <g, d'>2.
  c,8 ~ g' ~ <c, g'>2 g''4
                                % 16
  c,8 ~ g' ~ <c, g'>2.
  c8 ~ f ~ <c f>2.
  g8 ~ d' ~ <g, d'>2 << { \voiceTwo g'8 f } \new Voice { \voiceOne g,4 } >> \oneVoice
                                % 19
  c,8 ~ g' ~ <c, g'>2 r4
  bes'8~ f'~ bes~ bes~ <bes f bes,>2
  ees,,8~ bes'~ ees~ ees~ <ees, bes' ees>2
                                % 22
  bes'8~ f'~ bes~ bes~ <bes f bes,>2
  g,8~ d'~ g~ g~ <g d g,>2
  c,,8 g' ees' g, aes ees' aes ees
                                % 25
  a,8 a' fis4~ fis r4
  g,8~ ees'~ g4~ <g, ees' g>2
  g8~ g' <f g,>2 r4
                                % 28 second ending
  c,8~ g'~ <c, g'>2 r4
 bes'8~ f'~ bes~ bes~ <bes f bes,>2
  ees,,8~ bes'~ ees~ ees~ <ees, bes' ees>2
                                % 31
  bes'8~ f'~ bes~ bes~ <bes f bes,>2
  g,8~ d'~ g~ g~ <g d g,>2
  c,,8 g' ees' g, aes ees' aes ees
                                % 34
  a,8 a' fis4~ fis r4
  g,8~ ees'~ <g, ees' g>2.
  g8~ g' <f g,>2 r4
                                % 37
  c8 ~ g' ~ <c, g'>2.
  c8 ~ f ~ <c f>2.
  g8 ~ d' ~ <g, d'>2.
                                % 40
  c,8 ~ g' ~ <c, g'>2 g''4
  c,8 ~ g' ~ <c, g'>2.
  c8 ~ f ~ <c f>2.
                                % 43
  g8 ~ d' ~ <g, d'>2 <g g'>4
  c8 g'~ g4~ <g, d' g>2
}

altoLyrics = \lyricmode {
  I come to you, o my Je -- ru -- sa -- lem,
  if you would on -- ly hear my cry. __
  I come to
                                % 6
  you, __
  o my Je -- ru -- sa -- lem,
  to you to suf -- fer and to die.
                                % 11
  I come to you, __ Je -- ru -- sa -- lem, __
  if on -- ly hear my
                                %15
  cry. __
  I come to you, __ Je -- ru -- sa -- lem,
  to suf -- fer and die.
  But comes a day in morn -- ing,
  \skip 1 wav -- ing palms on
  high, when you will
  shout loud ho -- sa -- nas and
  bles -- sing, yet soon will
  jeer, __ "\"O" cru -- ci -- "fy!\""
  I come to
                                % 28 second ending
  die. But
  comes a day of
  morn -- ing, when
  an -- cient __ strife shall
  cease, __ and I will
  reign ov -- er you in
                                % 34
  glo -- ry, __ a -- round my
  throne __ e -- ter -- nal
  peace. __ O come to
}

sopranoLyrics = \lyricmode {
  \repeat unfold 4 { \skip 1 }
  o my Jer -- ru -- sa -- lem,
  if you would on -- ly hear my cry.
  I come to you, o my Je -- ru -- sa -- lem,
  to you to suf -- fer and to die.
  comes a day in the morn -- ing, of
  wav -- ing your palms on
  high __ ,when you will
  shout loud ho -- sa -- nas and
                                % 25
  bles -- sing, __ Yet soon will
  jeer, __ "\"O" cru -- ci -- "fy!\""
  I come to
                                % 28 second ending
  die. \skip 1
  comes a day of the
  morn -- ing, when
  an -- ci -- ent  strife shall
  cease, __ and I will
  reign ov -- er you in
                                % 34
  glo -- ry, __ a -- round my
  throne __ e -- ter -- nal
  peace. __ O come to

}

tenorLyrics = \lyricmode {
  day in morn -- ing
  wav -- ing palms on high,
  when you will
  shout loud ho -- sa -- nas and
  bles -- sing,
  jeer, __ "\"O " -- cru  -- ci -- "fy!\""
}

bassLyrics = \lyricmode {
  day in morn -- ing
  wav -- ing palms on high,
  when you will
  shout loud ho -- sa -- nas and
  bles -- sing,
  jeer, "\"Cru" -- ci -- "fy!\""
}

\score {
  <<
    \new ChoirStaff <<
      \new Staff = "women" <<
        \new Voice = "sopranos" { \voiceOne << \global \sopranoMusic >> }
        \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
      >>
      \new Lyrics \with { alignAboveContext = #"women" } \lyricsto "sopranos" \sopranoLyrics
      \new Lyrics = "altos"
      \new Lyrics = "tenors"
      \new Staff = "men" <<
        \clef bass
        \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
        \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
      >>
      \new Lyrics \with { alignBelowContext = #"men" } \lyricsto "basses" \bassLyrics
      \context Lyrics = "altos" \lyricsto "altos" \altoLyrics
      \context Lyrics = "tenors" \lyricsto "tenors" \tenorLyrics
    >>
    \new GrandStaff \with { \RemoveEmptyStaves } <<
      \new Staff = "right" << \global \pianoTreble >>
      \new Staff = "left" << \clef bass \global \pianoBass >>
    >>
  >>

  \layout {
  }
}
