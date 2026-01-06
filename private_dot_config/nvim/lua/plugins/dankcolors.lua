return {
	{
		"RRethy/base16-nvim",
		priority = 1000,
		config = function()
			require('base16-colorscheme').setup({
				base00 = '#181216',
				base01 = '#241e22',
				base02 = '#3a3337',
				base03 = '#4e444a',
				base04 = '#d2c2ca',
				base05 = '#ecdfe5',
				base06 = '#ecdfe5',
				base07 = '#362e33',
				base08 = '#ffb4ab',
				base09 = '#f5b9a4',
				base0A = '#d2c2ca',
				base0B = '#f4b2e2',
				base0C = '#dcbed1',
				base0D = '#f4b2e2',
				base0E = '#dcbed1',
				base0F = '#ffb4ab',
			})

			local function set_hl_mutliple(groups, value)
				for _, v in pairs(groups) do vim.api.nvim_set_hl(0, v, value) end
			end

			vim.api.nvim_set_hl(0, 'Visual',
				{ bg = '#67355d', fg = '#ffd7f1', bold = true })
			vim.api.nvim_set_hl(0, 'LineNr', { fg = '#4e444a' })
			vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#f4b2e2', bold = true })

			local current_file_path = vim.fn.stdpath("config") .. "/lua/plugins/dankcolors.lua"

			if not _G._matugen_theme_watcher then
				local uv = vim.uv or vim.loop
				_G._matugen_theme_watcher = uv.new_fs_event()

				_G._matugen_theme_watcher:start(current_file_path, {}, vim.schedule_wrap(function()
					local new_spec = dofile(current_file_path)

					if new_spec and new_spec[1] and new_spec[1].config then
						new_spec[1].config()
						print("󰂖 Matugen: Colors reloaded!")
					end
				end))
			end
		end
	}
}
