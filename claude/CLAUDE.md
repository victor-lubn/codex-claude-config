# Personal Claude Instructions

## Phoenix Spec Source Of Truth

For Phoenix/LPRD work, treat Supabase as the source of truth for product/spec
discovery.

- Use Supabase project `eomdev-specdev-v2` (`utpncstybhzcohoyeflv`) when looking
  up Phoenix specs, feature records, generated PRDs, open questions,
  opportunities, source materials, and epic mappings.
- Use the Supabase tables `features`, `documents`, `document_versions`,
  `questions`, `opportunities`, `epics`, `feature_epics`, `source_materials`,
  and `material_features` for spec discovery.
- Before creating or refining Jira backlog from Phoenix specs, query Supabase
  first and cite which Supabase records/tables informed the backlog.
- Do not write to Supabase when the task only asks for research, planning, or
  backlog discovery.

## Portable Config Sync

When adding or changing personal portable instructions, keep Codex and Claude in
sync: update the local runtime config for both tools where applicable, mirror the
safe portable copy in `C:\a-phoenix\codex-claude-config`, then commit and push
that config repository.
