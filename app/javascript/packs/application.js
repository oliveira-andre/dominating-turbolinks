require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
$ = require('jquery')
require('packs/people')

$(document).on("turbolinks:before-visit", function () {
  Turbolinks.clearCache()
})