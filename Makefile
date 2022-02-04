SHELL:=powershell.exe
.SHELLFLAGS:= -NoProfile -ExecutionPolicy RemoteSigned -Command

SRC_DIR=src
SRCS=$(basename $(notdir $(wildcard $(SRC_DIR)/*.ps1)))
TEST_DIR=test

TEST_Q_DIR=$(TEST_DIR)/$(Q)
TEST_Q_PS=$(Q).ps1
TESTS=$(basename $(notdir $(wildcard $(TEST_Q_DIR)/*.txt)))
RUNS=$(addprefix run-,$(TESTS))

ANS_DIR=ans
ANS_Q_DIR=$(ANS_DIR)/$(Q)

run-%: test/$(Q)/%.txt
	cat $^ | $(SRC_DIR)/$(TEST_Q_PS)


%: test/$(Q)/%.txt
	cat $^ | $(SRC_DIR)/$(TEST_Q_PS) | compare -passthru (cat $(ANS_Q_DIR)/$@.txt) | %{if($$_ -ne $$null) {throw "error"}}

test: $(TESTS)
run: $(RUNS)

run-all:
	echo $(SRCS) | %{("{0}{1}" -f ("="*10), $$_); make run Q=$$_}

test-all:
	echo $(SRCS) | %{"{0}{1}" -f ("="*10), $$_; make test Q=$$_; if(!$$?) {throw "$$_ wrong"} }
