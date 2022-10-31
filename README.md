
## 模板介绍
<p align=center>
   基于Springboot + SpringSecurity 的前后端分离简易开发模板
</p>


<p align="center">
   <a target="_blank" href="https://github.com/23DAY01/template_23DAY">
      <img src="https://img.shields.io/badge/JDK-1.8+-green.svg"/>
      <img src="https://img.shields.io/badge/springboot-2.7.4.RELEASE-green"/>
      <img src="https://img.shields.io/badge/mysql-8.0.20-green"/>
      <img src="https://img.shields.io/badge/knife4j-2.0.7-green"/>
      <img src="https://img.shields.io/badge/mybatis--plus-3.4.0-green"/>
      <img src="https://img.shields.io/badge/redis-6.0.5-green"/>
      <img src="https://img.shields.io/badge/springsecurity-2.7.4-green"/>
   </a>
</p>

## 仓库地址

**Github地址：**[https://github.com/23DAY01/template_23DAY](https://github.com/23DAY01/template_23DAY)

## 目录结构

```
site.day.template
├── annotation    			    --  自定义注解
├── aspect        			    --  aop模块
├── config        			    --  配置模块
│       └── property                        --  配置属性
├── constant      			    --  常量模块
├── controller    			    --  控制器模块
├── enums         			    --  枚举模块
├── exception     			    --  自定义异常模块
├── filter     			            --  过滤器模块
├── handler       			    --  处理器模块
│       └── securityHandler                 --  springSecurity处理器
├── intercept       			    --  拦截器模块
├── mapper       			    --  数据库操作模块
├── pojo       			            --  实体类模块
│       └── domain                 
│       └── dto                 
│       └── vo                 
├── service       			    --  服务模块
│       └── impl                            --  服务实现类模块
├── strategy      			    --  策略模块（用于扩展第三方登录，搜索模式，上传文件模式等策略）
└── utils         			    --  工具类模块
```

## 项目介绍

- 利用自定义注解aop实现api限流、防表单重复提交、操作日志管理
- 支持动态权限修改，采用RBAC权限模型
- 代码支持支持多种上传模式（阿里OSS、本地、七牛云等）
- 代码遵循阿里巴巴开发规范
- 采用自定义utils复写各类工具库，减少该模板对工具库的依赖，降低耦合性
- 复写SpringSecurity配置，实现自定义权限管理
- 采用docker-compose编排docker容器，一键启动
- 

## 技术栈介绍

- springBoot
- docker
- springSecurity
- swagger
- mybatisPlus
- mysql
- redis
- log4j+logback

## 开发环境

|开发工具|说明|
|-|-|
|IDEA|Java开发工具IDE|
|Navicat|MySQL远程连接工具|
|Another Redis Desktop Manager|Redis远程连接工具|
|X-shell|Linux远程连接工具|
|Xftp|Linux文件上传工具|

|开发环境|版本|
|-|-|
|JDK|1.8|
|MySQL|8.0.20|
|Redis|6.0.5|

## 项目部署

1. 拉取项目

   ```bash
   git clone https://github.com/23DAY01/template_23DAY.git
   ```

2. 修改配置文件

   - application-prod.yml

     

   主要修改以下几个地方

   - port
   - oss配置
   - 数据库配置（redis、mysql
   - 日志配置

3. docker配置

   修改docker-compose和DockerFile

4. docker run

## 项目总结

该模板可以作为小型项目的建议开发模板，也可以用作新手入门学习。模板难点在于对SpringSecurity的自定义。
