# davemorin’s Homebrew Tap

Homebrew tap for shipping my CLI tools.

## Install

```bash
brew tap davemorin/tap
```

## Install Packages

```bash
# formula
brew install davemorin/tap/<name>
```

## Packages

### Formulae

- `supacrawl` — Mirror Supabase/Postgres into local SQLite for search and offline analysis

## Update / Uninstall

```bash
brew update
brew upgrade

brew uninstall <formula>
```

## Notes

- Run `brew info davemorin/tap/<name>` for per-tool caveats and setup steps.
- `supacrawl` needs a Postgres connection string in `SUPABASE_DB_URL` for metadata and row sync.
- `supacrawl` uses `SUPABASE_SECRET_KEY` for private Storage downloads, with legacy `SUPABASE_SERVICE_ROLE_KEY` support.

## Manual Cleanup (formulae)

Homebrew formulae don’t support `--zap`. Delete these to “factory reset”:

- `supacrawl`: `~/.supacrawl/`

## Local Source Checkouts (Dave)

All referenced projects live next to this repo under `~/GitHub/<repo>`.
