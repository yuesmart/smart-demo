## Demo for Blog

### 脚本架构
基于 Bootstrap + Rails 4.2.6 + Sqlite 的演示。

### 快速启动

```
bundle install
bundle exec rake db:create
bundle exec rake db:migrate
#导入测试数据
bundle exec rake scraper:tuicool:import
bundle exec rails s
```

访问 http://localhost:3000 即可

### 数据说明

演示中采用的数据全部来自于 tuicool，具体的抓取脚本在

> app/services/scraper/tuicool_service.rb