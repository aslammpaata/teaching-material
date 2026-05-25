#!/bin/bash
#
# create-messy-docs.sh
# Generate a messy documents directory for OpenClaw cleanup activity
#
# Usage: bash messy-docs-setup.sh [target_dir]
# Default: ~/messy-docs-activity
#
# Repository: https://github.com/YOUR-USERNAME/openclaw-cleanup-activity
#

set -e

TARGET_DIR="${1:-$HOME/messy-docs-activity}"

echo "📁 Creating messy documents directory: $TARGET_DIR"
mkdir -p "$TARGET_DIR"
cd "$TARGET_DIR"

# ─── Create directory structure ─────────────────────────────────────

mkdir -p "documents" "docs" "Downloads" "desktop" "old stuff" "NEW FOLDER" "temp" "tmp"

# ─── Create duplicate files with different names ─────────────────────

echo "Creating duplicate files..."

# Project proposal - 3 copies
echo "PROJECT PROPOSAL - AI Learning Platform - Draft Version" > "documents/project_proposal_v1.docx"
echo "PROJECT PROPOSAL - AI Learning Platform - Final Version" > "docs/proposal_final.docx"
echo "PROJECT PROPOSAL - AI Learning Platform - Copy" > "NEW FOLDER/Copy of proposal.docx"

# Budget spreadsheet -2 copies
echo "Budget Q1 2024: Marketing \$5,000, Development \$15,000, Operations \$3,000" > "documents/budget_2024_Q1.xlsx"
echo "Budget Q1 2024: Marketing \$5,000, Development \$15,500, Operations \$3,000" > "desktop/budget draft.xlsx"

# Meeting notes - scattered
echo "Meeting Notes - January 15, 2024: Attendees: John, Sarah, Mike, Lisa" > "documents/meeting_notes_jan.txt"
echo "Meeting Notes - January 15, 2024: Attendees: John, Sarah, Mike, Lisa" > "temp/notes.txt"

# ─── Create junk files ───────────────────────────────────────────────

echo "Creating junk files..."

# Temporary files
echo "Temporary content 1" > "temp/file1.tmp"
echo "Temporary content 2" > "temp/file2.tmp"
echo "Temporary content 3" > "temp/file3.tmp"
touch "temp/empty_file.tmp"

# Untitled files
echo "Untitled document content" > "documents/untitled.txt"
echo "Another untitled document" > "desktop/untitled 2.txt"

# Screenshot-style names
echo "Screenshot from video call" > "desktop/Screen Shot 2024-01-15 at 3.45 PM.png"
echo "Another screenshot" > "Downloads/Screen Shot 2024-01-16 at 10.22 AM.png"

# Version chaos
echo "Report Version 1 - Initial draft" > "documents/report_v1.docx"
echo "Report Version 2 - Updated draft" > "documents/report_v2.docx"
echo "Report Version 2 FINAL" > "documents/report_v2_FINAL.docx"
echo "Report Version 2 FINAL FINAL" > "documents/report_v2_FINAL_FINAL.docx"
echo "Report - ACTUAL FINAL VERSION USE THIS ONE" > "documents/report_v2_FINAL_FINAL_v2_USE_THIS_ONE.docx"

# Confusing names
echo "Invoice data" > "temp/Document1.pdf"
echo "Presentation slides" > "documents/New Document (2).docx"
echo "Contact list" > "Downloads/Copy of Copy of contacts.xlsx"
echo "Notes from call" > "old stuff/file (1).txt"

# Hidden system files
touch "desktop/.DS_Store"
touch "documents/~\$temp.docx"

# ─── Create legitimate files to find ─────────────────────────────────

echo "Creating legitimate files..."

cat > "documents/important_contract.pdf" << 'EOF'
IMPORTANT CONTRACT
This is a legitimate signed contract.
DO NOT DELETE.
Party A: Company Inc.
Party B: Client Corp.
Date: January 1, 2024
EOF

cat > "desktop/presentation.pptx" << 'EOF'
QUARTERLY PRESENTATION
Slide 1: Overview
Slide 2: Metrics
Slide 3: Goals
Slide 4: Action Items
EOF

cat > "Downloads/invoice_2024_001.pdf" << 'EOF'
INVOICE #2024-001
Date: January 10, 2024
Amount: $1,500.00
Status: Paid
EOF

# ─── Create subdirectory mess ───────────────────────────────────────

echo "Creating nested mess..."

mkdir -p "documents/old" "documents/archive" "temp/cache" "temp/logs"

cat > "documents/old/deprecated_config.json" << 'EOF'
{
    "version": "1.0",
    "deprecated": true,
    "settings": {}
}
EOF

cat > "temp/cache/cache_data.tmp" << 'EOF'
cached data - can be deleted
EOF

cat > "temp/logs/error.log" << 'EOF'
[ERROR] 2024-01-15 14:30: Something went wrong
[ERROR] 2024-01-15 14:31: Retry failed
EOF

# ─── Summary ─────────────────────────────────────────────────────────

echo ""
echo "✅ Messy directory created at: $TARGET_DIR"
echo ""
echo "📊 Summary:"
FILE_COUNT=$(find "$TARGET_DIR" -type f | wc -l)
DIR_COUNT=$(find "$TARGET_DIR" -type d | wc -l)
echo "  Files created: $FILE_COUNT"
echo "  Directories: $DIR_COUNT"
echo ""
echo "🎯 Files include:"
echo "  - Multiple duplicate files with different names"
echo "  - Version chaos (FINAL_FINAL files)"
echo "  - Junk temporary files"
echo "  - Screenshots in wrong locations"
echo "  - Empty files"
echo "  - Hidden system files (.DS_Store)"
echo "  - Some legitimate files to preserve"
echo ""
echo "Next: Students will ask their OpenClaw agent to clean this up!"