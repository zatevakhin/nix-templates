{
  description = "Self-contained flake-parts dev-shell templates";

  outputs = {self, ...}: {
    templates = {
      rust = {
        path = ./templates/rust;
        description = "Rust development shell using flake-parts and rust-overlay";
        welcomeText = ''
          Rust template initialized.
          Next: nix develop
          Then: cargo init --vcs none .
        '';
      };

      python = {
        path = ./templates/python;
        description = "Python development shell using flake-parts";
        welcomeText = ''
          Python template initialized.
          Next: nix develop
          Then: uv init
        '';
      };

      elixir = {
        path = ./templates/elixir;
        description = "Elixir development shell using flake-parts";
        welcomeText = ''
          Elixir template initialized.
          Next: nix develop
          Then: mix new .
        '';
      };

      default = self.templates.rust;
    };
  };
}
