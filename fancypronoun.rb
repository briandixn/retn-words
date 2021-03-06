=begin
Recursive Transition Network (RTN) for constructing "fancy nouns."
Modification of the RTN on page 132 of the Twentieth-anniversary Edition of
"Godel, Escher, Bach" by Douglas R. Hofstadter.
Features an unbounded adverb loop before a given verb: the ORNATE_VERB structure
                                              -> ORNATE_VERB -> FANCY_NOUN -> end
                          -> RELATIVE_PRONOUN -> FANCY_NOUN -> ORNATE_VERB -> end
FANCY_NOUN -> ORNATE_NOUN -> end
                          -> PREPOSITION -> FANCY_NOUN -> end
            -> NOUN -> end
ORNATE_NOUN -> ADJECTIVE (unbounded loop) -> NOUN -> end
            -> ARTICLE -> ADJECTIVE (unbounded loop) -> NOUN -> end
                       -> NOUN -> end
ORNATE_VERB -> VERB -> end
            -> ADVERB (unbounded loop) -> VERB -> end
=end

def article()
  ar = ["a","the"]
  return ar.sample
end

def adjective()
  ad = ["new","old","boring"]
  return ad.sample
end 

def noun()
  no = ["a.i","car","company" ]
  return no.sample
end

def preposition()
  pre = ["without","also" ]
  return pre.sample 
end

def verb()
  ver = ["touched","ran"]
  return ver.sample
end

def relative_pronoun()
  rel = ["that"]
  return rel.sample
end

def sente()
  sentence = article() + " " + adjective()
  puts("#{sentence}")
end 

sente()
