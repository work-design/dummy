# dummy

这是一个 Work Design 精心打磨后的 Rails 应用模板，主要用于：
* Rails Engine 测试：Work Design 旗下的所有 engine 下的 test/dummy 都引用本项目作为测试的 dummy 应用；
* 作为模板初始化一个新的 Rails 应用；

本项目具备如下特性：
* 最佳实践：集成了 Work Design 的几个基础项目，给你带来了完全没有副作用的开发体验，包括：
  * 自动生成 migration: `bin/rails rails_extend:migrations`，[详见]()
  * 集成 [vite](https://github.com/vitejs/vite)，由 [rails_vite](https://github.com/work-design/rails_vite) 实现,给你带来最佳的前端开发体验，比 Rails 7 默认的前端技术栈多了 HMR；
* 最少改动：
  * 不用 copy `.example` 文件
* 

## 如何使用
如果是在本项目下运行 Rails，请使用`bundle exec rails`, 这样会正确设置ENV['BUNDLE_GEMFILE']的值。



## Prepare
* run `yarn install`

