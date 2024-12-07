# Makefile for generating README.md and other actions

# Variables
README = README.md
SCRIPT = guessinggame.sh
DATE = $(shell date)
LINES = $(shell wc -l < $(SCRIPT))

# Default target
all: $(README)

# Rule to generate README.md
$(README):
	@echo "Generating README.md..."
	@echo "# Guessing Game Project" > $(README)
	@echo "Date and Time: $(DATE)" >> $(README)
	@echo "Lines of Code in guessinggame.sh: $(LINES)" >> $(README)

# Clean target (optional)
clean:
	rm -f $(README)

.PHONY: all clean
