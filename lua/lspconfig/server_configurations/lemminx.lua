local util = require 'lspconfig.util'

return {
  default_config = {
    cmd = { 'lemminx' },
    filetypes = { 'xml', 'xsd', 'svg' },
    root_dir = util.find_git_ancestor,
    single_file_support = true,
  },
  docs = {
    package_json = 'https://raw.githubusercontent.com/redhat-developer/vscode-xml/master/package.json',
    description = [[
https://github.com/eclipse/lemminx

The easiest way to install the server is to get a binary at https://download.jboss.org/jbosstools/vscode/stable/lemminx-binary/ and place it in your PATH.

NOTE to macOS users: Binaries from unidentified developers are blocked by default. If you trust the downloaded binary from jboss.org, run it once, cancel the prompt, then remove the binary from Gatekeeper quarantine with `xattr -d com.apple.quarantine lemminx`. It should now run without being blocked.

]],
    default_config = {
      root_dir = [[util.find_git_ancestor]],
    },
  },
}
