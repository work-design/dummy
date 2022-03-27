# dummy

这是一个 Work Design 精心打磨后的 Rails 应用模板，主要用于：
* Rails Engine 测试：Work Design 旗下的所有 engine 下的 test/dummy 都引用本项目作为测试的 dummy 应用；
* 作为模板初始化一个新的 Rails 应用；

本项目具备如下特性：
* 最佳实践：集成了 Work Design 的几个基础项目，给你带来了完全没有副作用的开发体验，包括：
  * 自动生成 migration: `bin/rails rails_extend:migrations`，[详见]()
  * 集成 [vite](https://github.com/vitejs/vite)，由 [rails_vite](https://github.com/work-design/rails_vite) 实现,给你带来最佳的前端开发体验，比 Rails 7 默认的前端技术栈多了 [HMR](https://cn.vitejs.dev/guide/features.html#hot-module-replacement)；
* 最少改动：
  * 不用 copy `.example` 文件

## 如何使用
1. 安装依赖：
  * 运行 `bundle`
  * 运行 `yarn install`
2. 个性化配置
默认提供了基本的通用配置，存储于 config/credentials.yml.enc，具体配置可运行 `bin/rails credentials:show` 查看。 个性化配置在命令后加 `--environment [name]` 即可。config/credentials 默认提供了 development 环境和 test 环境的 key, 此举的意义是为了方便开发者之间相互分享 `config/credentials/[name].yml.enc` 文件。其中默认配置包含：
  * db，[postgresql url 语法](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNSTRING)
  * secret_key_base

## 开始开发
1. 启动 vite: `bin/vite`，vite 将启动静态资源（javascript/css/image）的开发编译；
  * 注意检查 public 文件夹下是否存在 manifest.json 文件，如果该文件存在，则在本地使用的是编译后的静态资源；
2. 启动 rails: `bin/rails`
3. 浏览器里访问: `localhost:3000`

## 部署
1. 编译静态资源：`bin/vite build`

## 注意
* 如果是在本项目下运行 Rails，请使用 `bin/rails`, 这样会正确设置 ENV['BUNDLE_GEMFILE'] 的值；

