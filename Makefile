-include Makefile.rules

# dossier des fichiers sources
SRC_DIR = src

# fichiers source pour la compilation
SRCS = 
# fichier en .o
OBJS = $(SRCS:.c=.o)

#nom pour le projet
NAME = jean.lepeltier

# nom du projet pour les librairies
NOM_PROJ = 

# nom des librairies
LIB_STATIC = $(NOM_PROJ).a
LIB_SHARED = $(NOM_PROJ).so

ARCHIVE_NAME =

# Fichiers pour l'archive targz2
FILES = 

# notre prof pourrait avoir la méchante idée d'ajouter un fichier avec le même nom qu'une des fonctions du makefile eh eh
.PHONY: all clean dist distclean check $(NOM_PROJ) shared static

all: $(NOM_PROJ)

$(NOM_PROJ): shared static

static: $(OBJS)
	@$(AR) rcs $(LIB_STATIC) $(OBJS)

shared: $(OBJS)
	@$(CC) -shared -o $(LIB_SHARED) $(OBJS)

$(SRC_DIR)/%.o: $(SRC_DIR)/%.c
	@$(CC) $(CFLAGS) -fPIC -c $< -o $@

clean:
	@rm -f $(SRC_DIR)/*.o $(LIB_STATIC) $(LIB_SHARED)

dist: all
	@tar -czvf $(ARCHIVE_NAME) $(FILES)

distclean: clean
	@rm -f $(ARCHIVE_NAME)

compil_all: all
	cp $(LIB_STATIC) ./check/
	cd check && ./check.sh

check: compil_all
	./check/test
