SHELL:=powershell.exe
.SHELLFLAGS:= -NoProfile -ExecutionPolicy RemoteSigned -Command

SRC_DIR=src
SRCS=$(basename $(notdir $(wildcard $(SRC_DIR)/*.ps1)))
TEST_DIR=test

Q_DIR=$(TEST_DIR)/$(Q)
Q_PS=$(Q).ps1

run:
	ls -name $(Q_DIR) | %{echo "file: $$_"; cat $(Q_DIR)/$$_ | $(SRC_DIR)/$(Q_PS)}

run-all:
	echo $(SRCS) | %{("{0}{1}" -f ("="*10), $$_); make run Q=$$_}
