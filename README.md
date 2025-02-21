# dummy

这是一个 Work Design 精心打磨后的 Rails 应用模板，主要用于：
* Rails Engine 测试：Work Design 旗下的所有 engine 下的 test/dummy 都引用本项目作为测试的 dummy 应用；
* 作为模板初始化一个新的 Rails 应用；

本项目具备如下特性：
* 最佳实践：集成了 Work Design 的几个基础项目，给你带来了完全没有副作用的开发体验，包括：
  * 自动生成 migration: `bin/rails g rails_com:migrations`，[详见]()

## 如何使用
1. Git clone 当前项目
  * `git clone git@github.com:work-design/dummy.git`
  * `git submodule update --init` 
  * `git submodule foreach git checkout main`
2. 安装依赖：
  * `bundle`
  * `npm install`
3. 个性化配置：
  * 修改 development 配置文件：`bin/rails credentials:edit -e development`
  * 设置选项：
    * database_user
    * secret_key_base
3. 非加密个性化配置：`config.x`    
4. 新增 engine 后：
  * `bin/rails g rails_com:migrations`
  * 重启 应用

## 开始开发
1. 启动: `bin/dev`，将启动静态资源（javascript/css/image）的开发编译，命令包含：
  * `npm build --watch`： 编译 js；
  * `npm build:css --watch`: 编译 css；
  * `bin/rails s`: 启动 rails server；
  * `bin/jobs`: 启动队列任务；
2. 浏览器里访问: `lvh.me:3000`

## 部署

### 基于 kamal 第一次部署
  * 购买云主机；
    * 把 root 账号 ssh 登录授权；
    * 安全策略，开放 80/443 端口；
    * [非 root 用户](https://docs.docker.com/engine/install/linux-postinstall/#manage-docker-as-a-non-root-user)
  * `bin/kamal setup`
  
### 基于 kamal 后续部署
  * 进入项目目录；
  * 拉取最新代码（如需要）：
    * `git pull`
    * `git submodule update --rebase` 更新子模块
  * 更新依赖（如需要）
    * `bundle install` 安装 gems
    * `npm install` 安装 js 依赖
  * 运行部署：`bin/kamal deploy`

## 应用相关 Docker 服务

### 直接使用 docker 启动

```
docker run --detach --restart unless-stopped --env RAILS_ENV="production" --env RAILS_MAX_THREADS="20"  --log-opt max-size="10m" --volume ~/app/acme:/rails/acme --volume ~/app/storage:/rails/storage --publish 3000:3000
```

### Docker 数据持久化目录位于家(linux user)目录的 app 目录下，如有需要可对该目录进行定期备份，包含：
  * storage: 默认为数据所在目录, 取决于 database.yml 配置；
  * tmp/storage: 上传文件所在目录, 取决于 storage.yml 配置;


## 注意
* 如果是在本项目下运行 Rails，请使用 `bin/rails`, 这样会正确设置 ENV['BUNDLE_GEMFILE'] 的值；
* 检查 public 文件夹下是否存在 manifest.json 文件，如果该文件存在，则在本地使用的是编译后的静态资源；
