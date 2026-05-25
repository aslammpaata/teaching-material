# 🚀 Quick Reference Card - OpenClaw Cleanup Activity

Print this page and keep it handy during the activity.

---

## Your Prompt Library

Copy and paste these into your OpenClaw chat:

### 🔍 Step 1: Analyze

```
I have a messy documents directory at ~/messy-docs-activity. 
Please explore it and tell me:
1. How many files are there?
2. What patterns of disorganization do you see?
3. Are there any duplicate files?
4. Which files look like junk vs. important?

List everything you find.
```

### 📋 Step 2: Plan

```
Create a cleanup plan for my messy directory. Include:
1. Which files should be deleted (junk, duplicates)
2. Which files should be consolidated (multiple versions)
3. How to rename files for clarity
4. What directory structure makes sense

Present the plan as a table or bulleted list. DO NOT make any changes yet.
```

### ▶️ Step 3: Execute

```
That plan looks good. Please execute it:
1. Create the new directory structure
2. Move files to appropriate locations
3. Delete the junk files you identified
4. Remove empty directories

After each major step, report what you did.
```

### ✅ Step 4: Verify

```
Please verify the cleanup worked:
1. List the final directory structure
2. Confirm no important files were deleted
3. Show the before/after file count
4. Create a summary of what was changed
```

---

## Key Concepts

### AI File Operations

| Tool | What It Does |
|------|--------------|
| `read` | Reads file contents |
| `write` | Creates or overwrites files |
| `edit` | Modifies files precisely |
| `exec` | Runs shell commands |

### Decentralized AI vs Centralized

| Centralized (ChatGPT) | Decentralized (Morpheus) |
|----------------------|--------------------------|
| One company owns it | Community owns it |
| Can be shut down | Resistant to shutdown |
| Proprietary model | Open-source (GLM-5) |
| Subscription pricing | Token-based (MOR) |

---

## Troubleshooting

| Problem | Try This |
|---------|----------|
| Agent can't find folder | Check `ls ~/messy-docs-activity` |
| Timeout waiting | Wait 30-60 seconds |
| Wrong files deleted | Reset: `rm -rf ~/messy-docs-activity; bash messy-docs-setup.sh` |
| OpenClaw not running | Open new terminal: `openclaw gateway start` |

---

## Reset Command

Start over with a fresh messy directory:

```bash
rm -rf ~/messy-docs-activity
bash messy-docs-setup.sh
```

---

## Key Takeaway

> **Always ask for a plan before execution.**
> Review what the AI will do before giving permission.

---

## Activity Checklist

- [ ] Step 1: Analyze ✓
- [ ] Step 2: Plan ✓
- [ ] Step 3: Execute ✓
- [ ] Step 4: Verify ✓
- [ ] Discussion participated ✓
- [ ] Reflected on decentralization ✓

---

**Questions?** Ask your instructor or check the student worksheet for details.