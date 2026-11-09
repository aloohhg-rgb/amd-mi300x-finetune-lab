#!/usr/bin/env bash
set -euo pipefail
echo "[check] $(date -Is)"
command -v rocm-smi && rocm-smi || echo "[check] no rocm-smi"
command -v rocminfo && rocminfo | head -n 40 || echo "[check] no rocminfo"
python3 - <<'PY' 2>/dev/null || echo "[check] torch missing"
import torch
print("torch", torch.__version__)
print("hip", getattr(torch.version, "hip", None))
print("available", torch.cuda.is_available())
if torch.cuda.is_available():
    print("name", torch.cuda.get_device_name(0))
PY
