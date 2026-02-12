-- https://github.com/imochoa/contabo-vps-docker/blob/master/podman/containers/systemd/.lazy.lua

-- Automatically set filetype and start LSP for systemd and Podman Quadlet unit files
vim.api.nvim_create_autocmd("BufEnter", {
	pattern = {
		-- systemd unit files
		"*.service",
		"*.socket",
		"*.timer",
		"*.mount",
		"*.automount",
		"*.swap",
		"*.target",
		"*.path",
		"*.slice",
		"*.scope",
		"*.device",
		-- Podman Quadlet files
		"*.container",
		"*.volume",
		"*.network",
		"*.kube",
		"*.pod",
		"*.build",
		"*.image",
	},
	callback = function()
		vim.bo.filetype = "systemd"

    vim.bo.commentstring = "# %s"

		vim.lsp.start({
			name = "systemd_ls",
			-- cmd = { '/path/to/systemd-lsp' }, -- Update this path to your systemd-lsp binary
			-- cmd = { "/Users/imochoa/.cargo/bin/systemd-lsp" },
			cmd = { "systemd-lsp" },
			root_dir = vim.fn.getcwd(),
		})
	end,
})

-- require('lspconfig').yamlls.setup{
--     on_attach=on_attach,
--     -- capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
--     capabilities = vim.cmp.lsp.update_capabilities(vim.lsp.protocol.make_client_capabilities()),
--     settings = {
--         yaml = {
--             schemas = {
--                 -- ["https://raw.githubusercontent.com/kedro-org/kedro/develop/static/jsonschema/kedro-catalog-0.17.json"]= "conf/**/*catalog*",
--                 ["https://json.schemastore.org/traefik-v3.json"] = "traefik.yml"
--             }
--         }
--     }
-- }


return {
  -- {
  --   "neovim/nvim-lspconfig",
  --   opts = function(_, opts)
  --     opts.servers = opts.servers or {}
  --     opts.servers.yamlls = opts.servers.yamlls or {}
  --     opts.servers.yamlls.settings = opts.servers.yamlls.settings or {}
  --     opts.servers.yamlls.settings.yaml = opts.servers.yamlls.settings.yaml or {}
  --     opts.servers.yamlls.settings.yaml.schemas = opts.servers.yamlls.settings.yaml.schemas or {}
  --
  --     -- map schema URL -> file pattern(s)
  --     vim.print(opts.servers.yamlls.settings.yaml.schemas)
  --     opts.servers.yamlls.settings.yaml.schemas["https://json.schemastore.org/traefik-v3.json"] = { "traefik.yml", "traefik/traefik.yml" }
  --   end,
  -- },
  -- {
  --   "neovim/nvim-lspconfig",
  --   config = function()
  --     require("lspconfig").yamlls.setup{
  --       on_new_config = function(new_config)
  --         new_config.settings = new_config.settings or {}
  --         new_config.settings.yaml = new_config.settings.yaml or {}
  --         new_config.settings.yaml.schemas = new_config.settings.yaml.schemas or {}
  --         new_config.settings.yaml.schemas["https://json.schemastore.org/traefik-v3.json"] = { "traefik.yml" }
  --       end,
  --     }
  --   end,
  -- },
  -- {
  --   "neovim/nvim-lspconfig",
  --   opts={
  --     settings.yaml.schemas= {
  --       "https://json.schemastore.org/traefik-v3.json",
  --       "https://json.schemastore.org/traefik-v3-file-provider.json",
  --     },
  --   };
  -- };

}
