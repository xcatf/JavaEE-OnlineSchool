杏林网校
===========================
### 技术选型
`Spring`  ` SpringMVC`  `MyBatis`  `JQuery`  `JSP`  `Bootstrap`

### 开发工具
`mysql5.7` `MyEclipse2017`  `JDK1.8`  `Tomcat 8`

### 部署步骤
1. jdk配置，MyEclipse导入项目


2. 将项目部署在tomcat上，并在tomcat的conf的server.xml的虚拟路径配置：
`<Context docBase="E:\upload" path="/upload" reloadable="true"/>`

3. 配置出现问题私聊邮箱：xcatf@qq.com


### 目录结构描述
```
├── README.md                   // help
├── SQL初始化脚本
├── UML建模
├── UML需求文档
├── onlineSchool                // 项目
│   ├──.settings
│   ├──.classpath              // 编译环境信息
│   ├──.springBeans           // spring环境
│   ├──.tern-project           
│   ├──WebRoot                 // 前端 
│   │    ├────META-INF
│   │    ├────resource   
│   │    │           ├────bootstrap        //bootstrap模板
│   │    │                      ├───css
│   │    │                      ├───fonts
│   │    │                      ├───js
│   │    │                      ├───less
│   │    │           ├────css        //自定义样式
│   │    │           ├────images    //banner、background等素材    
│   │    │           ├────lib         //Jquery文件
│   │    ├────WEB-INF
│   │    │           ├────classes        //编译生成的class文件
│   │    │           ├────config       //配置文件
│   │    │                   ├───applicationContext.xml
│   │    │                   ├───generatorConfig.xml
│   │    │                   ├───spring-datasource
│   │    │                   ├───spring-service
│   │    │          ├────jsp        //全部jsp页面
│   │    │          ├────lib        //项目所需要的全部jar包
│   │    │          ├────sql        //sql初始化脚本
│   │    │          ├────web.xml    
│   ├──src 
│   │    ├────jdbc.properties    //jdbc配置文件
│   │    ├────log4j2.xml        //日志
│   │    ├────com.xor 
│   │    │           ├────dao    //dao接口
│   │    │           ├────dto    
│   │    │           ├────mapper    //mapper代理xml文件
│   │    │           ├────model    //数据库模型
│   │    │           ├────service    //调用mapper，用于controller的依赖注入
│   │    │           ├────web        //spring controller
│   │    │           ├────util        //登录拦截器
│   │    │           ├────test        //测试
│
└── End
```

