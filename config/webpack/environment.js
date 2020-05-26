const { environment } = require('@rails/webpacker')
const { resolve } = require('path')
const paths = require('rails_com')

const rails_ujs = require('rails_com/package/loaders/rails_ujs')
const moment = require('rails_com/package/loaders/moment')
const remote_js_load = require('rails_com/package/loaders/remote_js_load')

environment.loaders.prepend('rails_ujs', rails_ujs)
environment.loaders.prepend('moment', moment)
environment.loaders.prepend('remote_js_load', remote_js_load)

const env = environment.toWebpackConfig()
env.entry = Object.assign(paths(), env.entry)
env.resolve.modules = env.resolve.modules.concat(resolve('node_modules'))

module.exports = env
