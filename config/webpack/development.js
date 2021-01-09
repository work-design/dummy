process.env.NODE_ENV = process.env.NODE_ENV || 'development'
process.env.RAILS_ENV = process.env.RAILS_ENV || 'development'

const webpackConfig = require('./base')

module.exports = webpackConfig
