return {
  -- NOTE: HIGHLY EXPERIMENTAL!
  {
    name = "nvhx",
    dir = "/home/tong/dev/nvim/nvhx/",
    --lazy = true,
    --event = "BufEnter *.hx",
  },
  { name = "nvim-twodark", dir = "/home/tong/dev/nvim/nvim-twodark/", lazy = true },
  {
    name = "nvim-mdview",
    dir = "/home/tong/dev/nvim/nvim-mdview/",
    event = "BufEnter *.md",
  },
  {
    name = "norc",
    dir = "/home/tong/dev/nvim/nvim-norc/",
    --lazy = true,
    opts = {
      account = {
        node = "tong",
        domain = "lab.disktree.net",
      },
      ui = {
        roster = {},
      },
    },
  },
  --{ name='nvim-xmpp', dir="/home/tong/dev/nvim/nvim-xmpp/"},
  --{ name='nvim-cmp-haxelib', dir="/home/tong/dev/nvim/nvim-cmp-haxelib"},
}
