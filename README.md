# nix-templates

Self-contained `flake-parts` templates for reproducible development shells.

## Available templates

- `rust`: Rust shell with `rust-overlay`, toolchain from `rust-toolchain.toml`, `pkg-config`, and `openssl`
- `python`: Python shell with `python3`, `uv`, and `ruff`
- `elixir`: Elixir shell with `elixir`, `erlang`, and `rebar3`
- `bun`: Minimal Bun shell with only `bun`

## Usage

From GitHub:

```bash
nix flake init -t github:zatevakhin/nix-templates#rust
```

From local checkout of this repo:

```bash
nix flake init -t path:../nix-templates#rust
```

Then enter the environment:

```bash
direnv allow
nix develop
```

Initialize language project files after entering the shell:

```bash
# rust
cargo init --vcs none .

# python
uv init

# elixir
mix new .

# bun
bun init
```

## Notes

- Templates are fully self-contained and do not import shared files from this repository.
- Each template has its own `flake.nix`, `.envrc`, and `.gitignore`.
