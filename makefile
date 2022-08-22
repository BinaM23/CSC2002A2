# makefile for A2
# Bina Mukuyamba
# 22/08/2022


.SUFFIXES: .java .class
SRCDIR=src
BINDIR=bin
JAVAC=/usr/bin/javac
JAVA=/usr/bin/java

$(BINDIR)/%.class: $(SRCDIR)/%.java
        $(JAVAC) -d $(BINDIR)/ -cp $(BINDIR) $<

CLASSES2= CatchWord.class\
          FallingWord.class\
          GamePanel.class\
          Score.class\
          ScoreUpdater.class\
          TypingTutorApp.class\
          TypingTutorApp$1.class\
          TypingTutorApp$2.class\
          TypingTutorApp$3.class\
          TypingTutorApp$4.class\
          TypingTutorApp$5.class\
          WordDictionary.class\
          WordMover.class\

CLASSES=$(CLASSES2:%.class=$(BINDIR)/%.class)

default: $(CLASSES)

run: $(CLASSES)
        $(JAVA) -cp $(BINDIR) TypingTutorApp $(totalWords) $(NumWords) 


clean:

 rm $(BINDIR)/*.class
