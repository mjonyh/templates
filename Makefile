# Root Makefile for SUST Physics LaTeX Templates
# Provides quick actions to build or clean all templates in the repository.

.PHONY: all bsc ms clean help

all: bsc ms

bsc:
	$(MAKE) -C bsc-project-template all

ms:
	$(MAKE) -C ms-thesis-template all

clean:
	$(MAKE) -C bsc-project-template clean
	$(MAKE) -C ms-thesis-template clean

help:
	@echo "Available commands:"
	@echo "  make all     - Build both B.Sc. project and M.S. thesis templates"
	@echo "  make bsc     - Build only the B.Sc. project template"
	@echo "  make ms      - Build only the M.S. thesis template"
	@echo "  make clean   - Clean up build artifacts in all template directories"
	@echo "  make help    - Show this help message"
