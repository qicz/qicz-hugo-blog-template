# HOW?

### 准备工作

- git环境 - 如果是mac，linux环境忽略
- go环境 - 下载对应平台的安装包，自行安装
- gohugo环境 - 查看[https://gohugo.io/getting-started/installing](https://gohugo.io/getting-started/installing)
- github账号，以下以`qicz`举例



### 开始

- 登录github，配置ssh key
  - 在console中（mac，linux为terminal，windows用git console）使用命令`ssh-keygen -t rsa -b 4096 -C "your_email@example.com"`邮箱换成自己的邮箱
  - 找到用户目录下面的`.ssh`目录，将id_rsa.pub用文本工具打开，复制所有内容（mac可以用`pbcopy < id_rsa.pub`)
  - 在https://github.com/settings/ssh/new配置ssh key，在复制的内容添加进去

- 在github创建一个public repository名为`qicz.github.io`(注意自行替换用户名)

- 在github创建一个private repository名为`qicz-blog-content`

- 以下均在console中进行clone `qicz-hugo-blog-template`

  ```bash
  git clone git@github.com:qicz/qicz-hugo-blog-template.git qicz 
  cd qicz 
  git remote add git@github.com:qicz/qicz.github.io
  mkdir public
  cd public 
  git remote add git@
  ```

  

> `git clone git@github.com:qicz/qicz-hugo-blog-template.git qicz` (最后的`qicz`是用户名，可自己随便起)

- 以下命令金君

