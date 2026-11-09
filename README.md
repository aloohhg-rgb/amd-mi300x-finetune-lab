# amd-mi300x-finetune-lab

Personal scratchpad for LoRA / QLoRA fine-tunes on AMD ROCm (hoping for MI300X).

I mostly do inference day-to-day, but every so often I want to poke a small adapter onto an instruct model without melting a dual-T4 setup. This folder is where those experiments live — configs, launch scripts, and half-finished notes.

**Honest status:** no successful MI300X run logged here yet. Scripts assume a ROCm torch build. If you're on CUDA only, this probably isn't useful until you translate the device bits.

## layout

```
configs/        yaml-ish training recipes
scripts/        launch helpers
notes/          braindump
examples/       tiny toy dataset stubs (not real training data)
```

## how I'd start (once on hardware)

```bash
./scripts/check_rocm.sh
# then something like:
./scripts/train_lora.sh configs/lora_sft_27b.yaml
```

Expect the yaml paths to be wrong on first try. I always forget `dataset` paths.

## models I'm curious about

- ~7–14B for fast loop
- ~27B if the card laughs at VRAM pressure
- not planning full 70B SFT from scratch here — adapters only

## sibling repos

- [amd-mi300x-openai-server](https://github.com/aloohhg-rgb/amd-mi300x-openai-server) — serve the thing after
- [amd-rocm-benchkit](https://github.com/aloohhg-rgb/amd-rocm-benchkit) — is the GPU even healthy

MIT. Independent project, not an AMD thing.

_(last edited when I was waiting for GPU access — again)_
