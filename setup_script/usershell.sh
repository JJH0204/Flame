#!/bin/bash# 1. ?�한????rbash)???�성?�합?�다.# ?�용?�에�?rbash�?기본 ?�로 ?�정USERNAME="Challenge21"  # ?�한???�용???�름sudo usermod --shell /bin/rbash $USERNAME# 2. ?�용?????�렉?�리�??�한???�경?�로 구성?�니??USER_HOME="/home/$USERNAME"if [ ! -d "$USER_HOME" ]; then    echo "?�용??$USERNAME?????�렉?�리가 ?�습?�다. ?�로 ?�성?�니??"    sudo mkdir -p "$USER_HOME"    sudo chown $USERNAME:$USERNAME "$USER_HOME"fi# 3. ?�한???�경???�요??명령?�만 ?�볼�?링크�??�용?�니??BIN_DIR="$USER_HOME/bin"sudo mkdir -p "$BIN_DIR"# ?�한???�경?�서 ?�용??명령??ALLOWED_COMMANDS=("vi" "uudecode" "ls")# 기존 링크 ?�거 �??�로??링크 ?�성sudo rm -f $BIN_DIR/*for cmd in "${ALLOWED_COMMANDS[@]}"; do    if command -v "$cmd" > /dev/null; then        sudo ln -s "$(command -v "$cmd")" "$BIN_DIR/$cmd"    else        echo "경고: $cmd 명령?��? 찾을 ???�습?�다. ?�크립트�??�인?�세??"    fidone# 4. ?�용???�경 ?�일???�한??경로�??�정?�니??PROFILE_FILE="$USER_HOME/.bash_profile"sudo bash -c "cat > $PROFILE_FILE" <<EOFexport PATH=$BIN_DIRexport SHELL=/bin/rbashalias ls='ls --color=auto'alias ll='ls -la'EOF# 권한 ?�정sudo chown $USERNAME:$USERNAME "$PROFILE_FILE"sudo chmod 644 "$PROFILE_FILE"# 5. ?�요?��? ?��? ?�일 ?�거 �????�렉?�리 권한 ?�한sudo rm -f "$USER_HOME/.bashrc"sudo chmod 750 "$USER_HOME"echo "?�한?????�경???�용??$USERNAME???�???�정?�었?�니??"echo "?�용 가?�한 명령?? ${ALLOWED_COMMANDS[*]}"