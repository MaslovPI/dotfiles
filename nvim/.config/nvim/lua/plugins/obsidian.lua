return {
	"epwalsh/obsidian.nvim",
	version = "*", -- recommended, use latest release instead of latest commit
	lazy = true,
	ft = "markdown",
	dependencies = {
		-- Required.
		"nvim-lua/plenary.nvim",
	},
	opts = {
		workspaces = {
			{
				name = "notes",
				path = "~/cozy/notes/",
			},
		},
		notes_subdir = "inbox",
		new_notes_location = "notes_subdir",

		disable_frontmatter = true,
		templates = {
			subdir = "templates",
			date_format = "%Y-%m-%d",
			time_format = "%H:%M:%S",
		},

		-- name new notes starting the ISO datetime and ending with note name
		-- put them in the inbox subdir
		-- note_id_func = function(title)
		--   local suffix = ""
		--   -- get current ISO datetime with -5 hour offset from UTC for EST
		--   local current_datetime = os.date("!%Y-%m-%d-%H%M%S", os.time() - 5*3600)
		--   if title ~= nil then
		--     suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
		--   else
		--     for _ = 1, 4 do
		--       suffix = suffix .. string.char(math.random(65, 90))
		--     end
		--   end
		--   return current_datetime .. "_" .. suffix
		-- end,

		mappings = {
			-- overrides the 'gf' mapping to work on markdown/wiki links within your vault
			["gf"] = {
				action = function()
					return require("obsidian").util.gf_passthrough()
				end,
				opts = { noremap = false, expr = true, buffer = true },
			},
			-- toggle check-boxes
			["<leader>ti"] = {
				action = function()
					return require("obsidian").util.toggle_checkbox()
				end,
				opts = { buffer = true },
			},
		},
		completion = {
			blink = true,
			min_chars = 2,
		},
	},
}
