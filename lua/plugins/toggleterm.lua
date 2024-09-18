return {
	"akinsho/toggleterm.nvim",
	opts = {
		open_mapping = "<C-t>",
		shell = function()
			-- check if we're running on windows
			if vim.fn.has("windows") then
				local path_to_pwsh7 = [["C:\Program Files\PowerShell\7\pwsh.exe"]]
				local disable_welcome = true

				-- check if pwsh 7 is installed
				if vim.fn.filereadable(path_to_pwsh7) then
					return path_to_pwsh7 .. " -NoLogo" -- disables the initial "loading settings took n seconds" and version info prompt
				end

				-- otherwise fall back to "normal" powershell
				return [[C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe]] .. " -NoLogo"
			end

			-- otherwise return normal shell
			return vim.o.shell
		end,
	},
}
