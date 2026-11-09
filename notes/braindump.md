# braindump

- dual T4 QLoRA on 13B was ok, 27B got spicy
- TODO: confirm whether bitsandbytes 4bit even works on ROCm for my stack or if I should stay bf16 LoRA on MI300X (probably bf16 — VRAM is the whole point)
- FIXME: gradient checkpointing + some flash attn builds = sad
- maybe try TRL SFTTrainer first, don't invent a trainer
- dataset: start with a tiny cleaned chat JSONL, not the whole internet
- packing? later. get loss curve first.
- if adapter dumps are huge I'm doing something wrong

reminder: never commit HF tokens. yes I almost did once.
