const { webpackConfig, devServer, config, merge } = require('@rails/webpacker')
const { resolve } = require('path')
const paths = require('rails_ui')
const customConfig = {
  resolve: {
    extensions: ['.scss']
  }
}
delete devServer['hmr']
delete devServer['disable_host_check']
delete devServer['use_local_ip']
delete devServer['pretty']
delete devServer['watch_options']

webpackConfig.entry = Object.assign(paths(), webpackConfig.entry)
webpackConfig.resolve.modules = webpackConfig.resolve.modules.concat(resolve('node_modules'))
webpackConfig.devServer = devServer

debugger

module.exports = merge(webpackConfig, customConfig)
