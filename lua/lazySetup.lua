-- returns the require for use in `config` parameter of lazy's use
-- expects the name of the config file
function get_setup(name)
  return function()
    require("setup." .. name)
  end
end

return {
  { "kdheepak/lazygit.nvim" },
  { "nvim-lua/plenary.nvim" },
  { "EdenEast/nightfox.nvim", config = get_setup("nightfox"), enabled = false },
  { "folke/tokyonight.nvim", config = get_setup("tokyonight"), enabled = false },
  { "catppuccin/nvim", name = "catppuccin", config = get_setup("catppuccin"), enabled = false },
  { "rebelot/kanagawa.nvim", config = get_setup("kanagawa"), priority = 1000, lazy = false },
  { "stevearc/dressing.nvim", event = "VeryLazy" },
  { "mbbill/undotree" },
  { "LudoPinelli/comment-box.nvim", event = "VeryLazy" },
  {
    "nvim-lualine/lualine.nvim",
    config = get_setup("lualine"),
    event = "VeryLazy",
  },
  { "codethread/qmk.nvim", config = get_setup("qmk") },
  { "ellisonleao/gruvbox.nvim", priority = 1000, config =get_setup("gruvbox") },
  {
    "gen740/SmoothCursor.nvim",
    config = get_setup("smoothcursor"),
    enabled = false,
  },
  {
    "folke/zen-mode.nvim",
    config = get_setup("zen-mode"),
    event = "VeryLazy",
  },
  {
    "folke/which-key.nvim",
    config = get_setup("which-key"),
    event = "VeryLazy",
  },
  { "brenoprata10/nvim-highlight-colors", config = get_setup("highlight-colors") },
  {
    "nvim-treesitter/nvim-treesitter",
    config = get_setup("treesitter"),
    build = ":TSUpdate",
    event = "BufReadPost",
  },
  { "rcarriga/nvim-notify" },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-nvim-lua" },
      { "hrsh7th/cmp-buffer" },
      { "hrsh7th/cmp-path" },
      { "hrsh7th/cmp-cmdline" },
      { "hrsh7th/vim-vsnip" },
      { "hrsh7th/cmp-vsnip" },
      { "hrsh7th/vim-vsnip-integ" },
      { "hrsh7th/cmp-calc" },
      { "hrsh7th/cmp-nvim-lsp-signature-help" },
      { "rafamadriz/friendly-snippets" },
    },
    config = get_setup("cmp"),
    event = "InsertEnter",
  },
  {
    "rlane/pounce.nvim",
    config = get_setup("pounce"),
    event = "BufEnter",
  },
  {
    "lewis6991/gitsigns.nvim",
    event = "BufReadPre",
    config = get_setup("gitsigns"),
  },
  { "jose-elias-alvarez/null-ls.nvim", config = get_setup("null-ls") },
  {
    "neovim/nvim-lspconfig",
    config = get_setup("lsp"),
    dependencies = {
      "SmiteshP/nvim-navbuddy",
      dependencies = {
        "SmiteshP/nvim-navic",
        "MunifTanjim/nui.nvim",
      },
      config = get_setup("navbuddy"),
    },
  },
  { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    config = get_setup("telescope"),
  },
  { "nvim-telescope/telescope-file-browser.nvim" },
  { "rmagatti/auto-session", config = get_setup("auto-session") },
  { "echasnovski/mini.ai", config = get_setup("mini-ai"), version = false },
  { "echasnovski/mini.bracketed", config = get_setup("mini-bracketed"), version = false },
  { "echasnovski/mini.bufremove", config = get_setup("mini-bufremove"), version = false },
  { "echasnovski/mini.comment", config = get_setup("mini-comment"), version = false, event = "VeryLazy" },
  { "echasnovski/mini.indentscope", config = get_setup("mini-indentscope"), version = false, event = "VeryLazy" },
  { "echasnovski/mini.move", config = get_setup("mini-move"), version = false },
  {
    "windwp/nvim-autopairs",
    config = get_setup("autopairs"),
  },
  {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup()
    end,
  },
  {
    "rmagatti/session-lens",
    dependencies = { "rmagatti/auto-session", "nvim-telescope/telescope.nvim" },
    config = get_setup("session"),
    enabled = false,
  },
  { "bennypowers/nvim-ts-autotag", branch = "template-tags", event = "InsertEnter" },
  {
    "winston0410/range-highlight.nvim",
    dependencies = { { "winston0410/cmd-parser.nvim" } },
    config = get_setup("range-highlight"),
  },
  { "goolord/alpha-nvim", config = get_setup("alpha"), enabled = false },
}

