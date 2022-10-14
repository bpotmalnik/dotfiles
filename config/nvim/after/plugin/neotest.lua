require("neotest").setup({
  adapters = {
    require('neotest-phpunit'),
    require('neotest-dart') {
      command = 'fvm flutter'
    }
  },
})
