# Regenerate README.md every time make is run.
.PHONY: all FORCE

all: README.md

README.md: guessinggame.sh makefile FORCE
	@echo "# Guessing Game" > README.md
	@echo "" >> README.md
	@echo "Generated on: $$(date)" >> README.md
	@echo "" >> README.md
	@echo "Lines of code in guessinggame.sh: $$(wc -l < guessinggame.sh | tr -d ' ')" >> README.md

FORCE:
