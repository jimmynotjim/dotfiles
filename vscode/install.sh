# code --list-extensions

CODE_BIN="/opt/homebrew/bin/code"

if [ ! -f "$CODE_BIN" ]; then
  echo "VSCode not found at $CODE_BIN - skipping extension installation"
  exit 0
fi

"$CODE_BIN" --install-extension anthropic.claude-code
"$CODE_BIN" --install-extension astro-build.astro-vscode
"$CODE_BIN" --install-extension austenc.tailwind-docs
"$CODE_BIN" --install-extension biomejs.biome
"$CODE_BIN" --install-extension bradlc.vscode-tailwindcss
"$CODE_BIN" --install-extension charliermarsh.ruff
"$CODE_BIN" --install-extension dbaeumer.vscode-eslint
"$CODE_BIN" --install-extension editorconfig.editorconfig
"$CODE_BIN" --install-extension esbenp.prettier-vscode
"$CODE_BIN" --install-extension GitHub.github-vscode-theme
"$CODE_BIN" --install-extension github.vscode-github-actions
"$CODE_BIN" --install-extension GitHub.vscode-pull-request-github
"$CODE_BIN" --install-extension jock.svg
"$CODE_BIN" --install-extension mattpocock.ts-error-translator
"$CODE_BIN" --install-extension mgmcdermott.vscode-language-babel
"$CODE_BIN" --install-extension mohsen1.prettify-json
"$CODE_BIN" --install-extension mrmlnc.vscode-duplicate
"$CODE_BIN" --install-extension ms-azuretools.vscode-containers
"$CODE_BIN" --install-extension ms-azuretools.vscode-docker
"$CODE_BIN" --install-extension ms-vscode-remote.remote-containers
"$CODE_BIN" --install-extension ms-vscode-remote.remote-ssh
"$CODE_BIN" --install-extension ms-vscode-remote.remote-ssh-edit
"$CODE_BIN" --install-extension ms-vscode.makefile-tools
"$CODE_BIN" --install-extension ms-vscode.remote-explorer
"$CODE_BIN" --install-extension swiftlang.swift-vscode
"$CODE_BIN" --install-extension tamasfe.even-better-toml
"$CODE_BIN" --install-extension unifiedjs.vscode-mdx
"$CODE_BIN" --install-extension usernamehw.errorlens