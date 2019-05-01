# dummy
基础rails 项目 for  engine test

## 如何使用
如果是在本项目下运行Rails，请使用`bundle exec rails`, 这样会正确设置ENV['BUNDLE_GEMFILE']的值。

## Prepare
* copy `database.yml.mysql` or `database.yml.sqlite3` to `database.yml`;
* run `yarn install`

## Notices
* Used Sqlite MemoryDB, see https://www.sqlite.org/inmemorydb.html
