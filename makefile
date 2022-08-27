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

CLASSES2=#WordDictionary.class \
	  FallingWord.class \
	  WordDictionary.class \
	  Score.class \
	  ScoreUpdater.class \
	  CatchWord.class \
	  WordMover.class \
	  GamePanel.class \
	  TypingTutorApp.class \

CLASSES=$(CLASSES2:%.class=$(BINDIR)/%.class)

default: $(CLASSES)

run: $(CLASSES)
	$(JAVA) -cp $(BINDIR) typingTutor.TypingTutorApp $(totalWords) $(NumWords) 
clean:
	rm $(BINDIR)/*.class
