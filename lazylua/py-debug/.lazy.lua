-- Register the adapter
-- https://github.com/mfussenegger/nvim-dap-python?tab=readme-ov-file#usage

require("dap-python").setup(
	-- if it is in your venv
	-- "/path/to/venv/bin/python"
	-- if globally installed
	-- "python"
	-- "python3"
	-- if using uv
	-- "uv"
	-- WARN: mason install? what is this?
	"debugpy-adapter"
)

-- require('dap-python').test_runner = 'pytest'

-- INFO: put extra configurations here or in .vscode/launch.json (see :help dap-launch.)
table.insert(require("dap").configurations.python, {
	type = "python",
	request = "launch",
	name = "My custom launch configuration",

	-- `program` is what you'd use in `python <program>` in a shell
	-- If you need to run the equivalent of `python -m <module>`, replace
	-- `program = '${file}` entry with `module = "modulename"
	program = "${file}",

	console = "integratedTerminal",

	-- Other options:
	-- See https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings
})

return {}
