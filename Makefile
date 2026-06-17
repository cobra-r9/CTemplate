# ==============================================================================
# 1. COMPILER & FLAGS CONFIGURATION
# ==============================================================================
CC       := gcc
CFLAGS   := -Wall -Wextra -Wpedantic -O2 -std=c23
CPPFLAGS := -Iinclude -MMD -MP

NAME     := my_program

SRC_DIR  := src
OBJ_DIR  := build
BIN_DIR  := $(OBJ_DIR)/bin
TARGET   := $(BIN_DIR)/$(NAME)

# ==============================================================================
# 2. DYNAMIC FILE DETECTION
# ==============================================================================
SRCS     := $(wildcard $(SRC_DIR)/*.c)
OBJS     := $(SRCS:$(SRC_DIR)/%.c=$(OBJ_DIR)/%.o)
DEPS     := $(OBJS:.o=.d)

# ==============================================================================
# 3. BUILD RULES
# ==============================================================================
.PHONY: all build run clean test

all: build

build: $(TARGET)

$(TARGET): $(OBJS)
	@mkdir -p $(BIN_DIR)
	@echo "Linking executable: $@"
	@$(CC) $(CFLAGS) $^ -o $@

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	@mkdir -p $(OBJ_DIR)
	@echo "Compiling: $< -> $@"
	@$(CC) $(CFLAGS) $(CPPFLAGS) -c $< -o $@

$(OBJ_DIR) $(BIN_DIR):
	@mkdir -p $@

run: $(TARGET)
	@echo ""
	@echo "-------------------------[test]--------------------------------"
	@echo ""
	@./$(TARGET)
	@echo ""
	@echo "---------------------------------------------------------------"
	@echo ""

clean:
	@echo "Cleaning up..."
	@rm -rf $(OBJ_DIR)

test: run clean 

# ==============================================================================
# 4. HEADER DEPENDENCY INCLUSION
# ==============================================================================
-include $(DEPS)
