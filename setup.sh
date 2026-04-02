set -euo pipefail

LAB_PATH="$(cd "$(dirname "$0")" && pwd)"

detect_rc_file() {
  local shell_name rc_file

  shell_name="$(basename "${SHELL:-}")"

  case "$shell_name" in
    bash)
      rc_file="$HOME/.bashrc"
      ;;
    zsh)
      rc_file="$HOME/.zshrc"
      ;;
    *)
      echo "Unsupported or unknown shell: ${SHELL:-unknown}"
      echo "Supported shells: bash, zsh"
      exit 1
      ;;
  esac

  printf '%s\n' "$rc_file"
}

RC_FILE="$(detect_rc_file)"

mkdir -p "$(dirname "$RC_FILE")"
touch "$RC_FILE"

BEGIN_MARKER="# >>> linux-learning-lab >>>"
END_MARKER="# <<< linux-learning-lab <<<"

if grep -Fq "$BEGIN_MARKER" "$RC_FILE"; then
  echo "linux-learning-lab is already configured in $RC_FILE"
else
  cat >> "$RC_FILE" <<EOF

$BEGIN_MARKER

alias lab='cd "$LAB_PATH"'

$END_MARKER
EOF

  echo "Added lab functions to $LAB_PATH"
fi

source $RC_FILE

echo
echo "Setup complete."
echo "Open a new terminal or run:"
echo "  source \"$RC_FILE\""
echo
echo "Then you can use:"
echo "  lab   - go to project root"
