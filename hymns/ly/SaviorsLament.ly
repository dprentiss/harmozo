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
  c2.\fermata bes4
}

altoMusic = \relative c'' {

  b2\rest b8\rest g^"Solo (or women only)"
  ees' b c2^~ c8 g c g bes8. aes16 aes4^~ aes8 \breathe
  f g aes g2^~ g8 f ees f g2^~ g8 \breathe
  g ees' b c2^~ c8
  g8 c g bes8. aes16 aes4^~ aes8 \breathe
  f g aes g2^~ g8 f ees d c2^\fermata  b'2\rest

  b1\rest b2\rest b8\rest g g g
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
  % 19 first ending
  c2. bes4
}

tenorMusic = \relative c {
  d1\rest d1\rest d1\rest d1\rest d1\rest d1\rest d1\rest d1\rest d1\rest
  d1\rest d1\rest d1\rest d1\rest d1\rest d1\rest d1\rest d1\rest d1\rest
  d1\rest
}

bassMusic = \relative c {
}

pianoTreble = \relative c'' {
  b1\rest b1\rest b1\rest b1\rest b1\rest b1\rest b1\rest b1\rest b1\rest
  r8 r16 b' c( fis, g d ees bes c fis,) g( d ees b)
  c2. b4
  <c ees> <c ees>2 <c ees>4
  %13
  <aes c> <aes c>2 <aes c>4
  <b d> <b d>2 ees8 <b d>8
  <c ees>4 <c ees>2 b4
  %16
  <c ees>4 <c ees>2 <c ees>4
  <aes c> <aes c>2 <aes c>4
  <b g'>4 <b g'>2 <b d>4
  <c g ees>4 <c g ees>2\fermata r4

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
}

altoLyrics = \lyricmode {
  I come to you, oh my Jer -- ru -- sa -- lem,
  if you would on -- ly hear my cry.
  I come to you, oh my Jer -- ru -- sa -- lem,
  to you to suf -- fer and to die.
  I come to you, Jer -- ru -- sa -- lem,
  if on -- ly hear my cry.
  I come to you, Jer -- ru -- sa -- lem,
  to suf -- fer and die.
  But

}

sopranoLyrics = \lyricmode {
  \repeat unfold 4 { \skip 1 }
  oh my Jer -- ru -- sa -- lem,
  if you would on -- ly hear my cry.
  I come to you, oh my Jer -- ru -- sa -- lem,
  to you to suf -- fer and to die.
  \skip 1
}
verseTwo = \lyricmode {
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
      \new Staff = "men" <<
        \clef bass
        \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
        \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
      >>
      \context Lyrics = "altos" \lyricsto "altos" \altoLyrics
    >>
    \new GrandStaff <<
      \new Staff = "right" << \global \pianoTreble >>
      \new Staff = "left" << \clef bass \global \pianoBass >>
    >>
  >>

    \layout {
    }
  }
