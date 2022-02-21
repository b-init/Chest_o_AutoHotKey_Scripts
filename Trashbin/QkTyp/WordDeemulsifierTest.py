import pyphen
import os

eng_dict = pyphen.Pyphen(lang = 'en_UK')

word_dir = open(f'{os.getcwd()}\\QkTyp\\google-10000-english.txt', "r")
word_dict = [w.rstrip() for w in word_dir.readlines() if len(w.rstrip()) == 6]

#print([eng_dict.inserted(w) for w in word_dict])

# tests
s = ['disgusting', 'pretend', 'panther', 'suppose', 'promise',  'intermediate', 'emulsion', 'program']
print([eng_dict.inserted(w) for w in s])

# dis gust ing = dsgstng, (just removed all vowels)
# pre tend = ptnd (removed vowels but pre = p)
# pan ther = pnthr (removed vowels)
# de com pose = dcmpse (rv)
# sup pose = spps

# rules for creating macro from word
# undecided • x-tion would be abbreviated as xn ( nation -> natn?)

# this isn't working out as well as I hoped it would and I don't wanna just delete it so it's gonna stay in the cozy little trashbin folder


