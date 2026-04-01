#!/usr/bin/env bash

install_skill() {
  local source="$1"
  shift

  if ! npx skills add "${source}" --global --yes --agent codex --agent cursor "$@"; then
    echo "Unable to install skills from ${source}; continuing"
  fi
}

install_skills() {
  install_skill "vercel-labs/agent-skills" --skill vercel-react-best-practices
  install_skill "vercel-labs/agent-skills" --skill web-design-guidelines
  install_skill "vercel-labs/agent-skills" --skill vercel-composition-patterns
  install_skill "vercel-labs/agent-skills" --skill vercel-react-native-skills
  install_skill "vercel-labs/agent-skills" --skill deploy-to-vercel
  install_skill "vercel-labs/skills" --skill find-skills
  install_skill "vercel-labs/next-skills" --skill next-best-practices
  install_skill "vercel-labs/next-skills" --skill next-cache-components
  install_skill "coreyhaines31/marketingskills" --skill seo-audit
  install_skill "shadcn/ui"
  install_skill "vercel/ai"
  install_skill "vercel/turborepo"
  install_skill "millionco/react-doctor"
  install_skill "anthropics/skills" --skill frontend-design
  install_skill "resend/resend-skills"

  install_skill "better-auth/skills"
  install_skill "prisma/skills"
  install_skill "next-safe-action/skills"
  install_skill "stripe/ai"
}

if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
  set -euo pipefail
  install_skills
fi
