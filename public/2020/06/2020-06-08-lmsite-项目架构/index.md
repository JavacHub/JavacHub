# LmSite 项目架构


<!--more-->

## LmSite


```bash
lmsite
├── lmsite-sso-auth -- 分布式单点登录 与 授权服务提供
├── lmsite-common -- 常用工具封装包
├── lmsite-ops -- 运维中心
├    ├── lmsite-admin -- spring-cloud 后台管理
├    ├── lmsite-codegen -- 代码生成
├    ├── lmsite-resource -- 资源管理
├── lmsite-service -- 业务模块
├    ├── lmsite-console -- 控制台模块
├    ├── lmsite-log -- 日志模块
├    ├── lmsite-system -- 系统模块
├    ├── lmsite-subsystem-service -- 子系统相关服务
├    └── lmsite-user -- 用户模块
├── lmsite-service-api -- 业务模块 api 封装
├    ├── lmsite-console-api -- 控制台 api
├    ├── lmsite-system-api -- 系统 api
├──  └── lmsite-user-api -- 用户 api
├──  ============================
└── lmsite-subsystems -- 扩展子系统
└─├── lmsite-system1 -- 文件管理系统（简单的上传下载搜索等功能）
└─├── lmsite-system2 -- 文件管理系统（简单的上传下载搜索等功能）
└─└── lmsite-system3 -- 文件管理系统（简单的上传下载搜索等功能）

```


