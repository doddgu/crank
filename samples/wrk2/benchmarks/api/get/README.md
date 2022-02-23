## wrk2-获取用户详情

``` 目录结构
benchmarks
├─ defaultTitle              场景名称( Description )
└─ guide.bat                 引导脚本，为后续场景启用多个接口压测引导、仅接口压测不需要此文件，此文件无需修改
└─ load.bat                  最终执行的脚本，其中指定了要指定的yml配置、场景、以及任务环境是.net 5.0
└─ load.benchmarks.yml       yml配置
└─ load.local.bat            测试本地环境时要执行的脚本、格式：load.{环境}.bat
└─ README.md                 帮助文档
└─ result.json               压测结果
```


## 如何单独压测本地环境的获取用户详情接口？

双击load.local.bat