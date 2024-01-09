# dummy

这是一个 Work Design 精心打磨后的 Rails 应用模板，主要用于：
* Rails Engine 测试：Work Design 旗下的所有 engine 下的 test/dummy 都引用本项目作为测试的 dummy 应用；
* 作为模板初始化一个新的 Rails 应用；

本项目具备如下特性：
* 最佳实践：集成了 Work Design 的几个基础项目，给你带来了完全没有副作用的开发体验，包括：
  * 自动生成 migration: `bin/rails g rails_extend:migrations`，[详见]()

## 如何使用
1. 安装依赖：
  * `bundle`
  * `yarn install`
2. 个性化配置：
  * 修改 development 配置文件：`bin/rails credentials:edit -e development`
  * 设置选项：
    * db，[postgresql url 语法](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNSTRING)
    * db_test
    * secret_key_base
3. 非加密个性化配置：`config.x`    
4. 新增 engine 后：
  * `bin/rails g rails_extend:migrations`
  * 重启 应用

## 开始开发
1. 启动: `bin/dev`，将启动静态资源（javascript/css/image）的开发编译，命令包含：
   * `yarn build --watch`： 编译 js
   * `yarn build:css --watch`: 编译 css
   * `bin/rails`: 启动 rails server
2. 浏览器里访问: `localhost:3000`

## 部署
* 编译静态资源：`rake assets:precompile`

## 注意
* 如果是在本项目下运行 Rails，请使用 `bin/rails`, 这样会正确设置 ENV['BUNDLE_GEMFILE'] 的值；
* 检查 public 文件夹下是否存在 manifest.json 文件，如果该文件存在，则在本地使用的是编译后的静态资源；
