## 目录结构

``` 目录结构
Crank
├─ benchmarks                压测脚本
│  ├─ api                   接口压测脚本               
│  │  ├─ add               
│  │  └─ get                  
│  ├─ scipts               lua脚本             
│  │  ├─ common            lua公共脚本
│  │  │  ├─ oauth.lua     认证lua脚本
│  │  │  ├─ util.lua      lua工具类脚本
│  │  ├─ request.lua       封装请求lua脚本   
│  ├─ scripts.tar           lua脚本压缩包
├─ common                            
│  ├─ load.profiles.yml     agent 负载机配置
│  ├─ project.profiles.yml  项目配置
│  ├─ scripts.profiles      crank 执行script配置，用于对输出结果的二次处理
│  ├─ project.profiles.yml  项目配置
├─ scripts                   场景压测脚本
│  ├─ 用户.bat              用户压测     
└─ env                       环境配置，标记当前需要压测的环境在哪个配置文件中存储
└─ env.local                 本地环境，存储本地环境的配置信息
└─ README.md                 帮助文档
```

如果需要更改压测环境，则只需要对应修改env的内容，替换为对应的环境文件名即可

以上属于demo，并不能同时运行多个场景，如果需要压测多接口，则需要有单独的应用服务器，并在场景中移除application