#!/usr/bin/env bash
# thin wrapper — real training code not wired yet
set -euo pipefail
CFG="${1:-configs/lora_sft_27b.yaml}"
echo "[train] config=${CFG}"
echo "[train] TODO: call into a peft/TRL entrypoint once I stop rewriting yaml"
echo "[train] for now this just validates the file exists"
[[ -f "${CFG}" ]] || { echo "missing ${CFG}"; exit 1; }
# placeholder so the script isn't totally empty
python3 - <<PY
import sys
print("[train] would load", "${CFG}")
print("[train] stub exit — implement me")
sys.exit(0)
PY
