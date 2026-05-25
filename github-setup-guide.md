# 🐙 GitHub Repository Setup Guide

This guide shows how to create a GitHub repository for distributing the OpenClaw teaching materials.

---

## Step 1: Create the Repository

### On GitHub.com

1. Go to https://github.com/new
2. Fill in repository details:
   - **Repository name:** `openclaw-cleanup-activity` (or your choice)
   - **Description:** Hands-on activity: Clean up messy files with decentralized AI
   - **Visibility:** Public (so students can clone without authentication)
   - **Initialize:** Check "Add a README file"
3. Click "Create repository"

---

## Step 2: Prepare Files Locally

Create a folder with all materials:

```bash
# Create project directory
mkdir -p ~/openclaw-cleanup-activity/teaching

# Copy teaching materials
cp ~/.openclaw/workspace/teaching/*.sh ~/openclaw-cleanup-activity/teaching/
cp ~/.openclaw/workspace/teaching/*.md ~/openclaw-cleanup-activity/teaching/
```

The folder structure should be:
```
openclaw-cleanup-activity/
├── README.md
└── teaching/
    ├── messy-docs-setup.sh
    ├── student-worksheet.md
    ├── instructor-guide.md
    ├── quick-reference.md
    └── README.md
```

---

## Step 3: Clone and Push

```bash
# Clone your new repository
cd ~
git clone https://github.com/YOUR-USERNAME/openclaw-cleanup-activity.git
cd openclaw-cleanup-activity

# Copy teaching materials
cp -r ~/.openclaw/workspace/teaching/* ./

# Add, commit, push
git add .
git commit -m "Add OpenClaw cleanup activity materials"
git push origin main
```

---

## Step 4: Create a Clean README.md

Replace the auto-generated README with:

```markdown
# 📁 OpenClaw Cleanup Activity

Hands-on activity: Clean up messy files with decentralized AI.

## Quick Start for Students

Run this command to create the messy directory:

\`\`\`bash
curl -fsSL https://raw.githubusercontent.com/YOUR-USERNAME/openclaw-cleanup-activity/main/teaching/messy-docs-setup.sh | bash
\`\`\`

Then follow the prompts in your OpenClaw web chat.

## Files

| File | Purpose |
|------|---------|
| `teaching/messy-docs-setup.sh` | Creates messy directory |
| `teaching/student-worksheet.md` | Student instructions |
| `teaching/instructor-guide.md` | Teaching script |
| `teaching/quick-reference.md` | Prompt cheat sheet |

## Requirements

- OpenClaw installed
- MOR Gateway API key from [app.mor.org](https://app.mor.org)
- Basic terminal familiarity

## Duration

30-45 minutes

## Learning Objectives

- Use AI agents for file organization
- Understand human-in-the-loop AI workflows
- Compare centralized vs decentralized AI
- Learn MOR token basics
```

---

## Step 5: Verify Raw URL Works

Test that students can download the script:

```bash
# Test the raw URL (replace YOUR-USERNAME)
curl -fsSL https://raw.githubusercontent.com/YOUR-USERNAME/openclaw-cleanup-activity/main/teaching/messy-docs-setup.sh | head -20
```

You should see the script content.

---

## Student Commands

Once your repository is set up, students canrun:

### Option 1: Download and Run (Recommended)

```bash
# Download the script
curl -fsSL https://raw.githubusercontent.com/YOUR-USERNAME/openclaw-cleanup-activity/main/teaching/messy-docs-setup.sh -o messy-docs-setup.sh

# Review it (optional but recommended)
cat messy-docs-setup.sh

# Run it
bash messy-docs-setup.sh
```

### Option 2: Pipe Directly to Bash (Quick)

```bash
curl -fsSL https://raw.githubusercontent.com/YOUR-USERNAME/openclaw-cleanup-activity/main/teaching/messy-docs-setup.sh | bash
```

### Option 3: Clone the Entire Repository

```bash
git clone https://github.com/YOUR-USERNAME/openclaw-cleanup-activity.git
cd openclaw-cleanup-activity/teaching
bash messy-docs-setup.sh
```

---

## Alternative: GitHub Gist

If you don't want a full repository, use a Gist:

1. Go to https://gist.github.com
2. Create a new Gist with the script content
3. Click "Create public gist"
4. Get the raw URL: Click "Raw" button
5. Students run:
   ```bash
   curl -fsSL https://gist.githubusercontent.com/YOUR-USERNAME/GIST_ID/raw/messy-docs-setup.sh | bash
   ```

---

## File Checklist

Before publishing, ensure you have:

- [ ] `README.md` - Main repository readme
- [ ] `teaching/messy-docs-setup.sh` - Executable script
- [ ] `teaching/student-worksheet.md` - Student instructions
- [ ] `teaching/instructor-guide.md` - Teaching script
- [ ] `teaching/quick-reference.md` - Prompt cheat sheet
- [ ] `teaching/README.md` - Teaching folder overview

---

## Security Note for Students

Tell students: "Before running any script from the internet, review it first:"

```bash
curl -fsSL https://raw.githubusercontent.com/YOUR-USERNAME/openclaw-cleanup-activity/main/teaching/messy-docs-setup.sh | less
```

This is good security hygiene!

---

## Your Repository URL

After setup, your materials will be at:

```
https://github.com/YOUR-USERNAME/openclaw-cleanup-activity
```

Replace `YOUR-USERNAME` with your actual GitHub username.