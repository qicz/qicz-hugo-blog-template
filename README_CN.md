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
  git remote add git@github.com:qicz/git-blog-cotent
  cd public 
  git init
  git checkout -b gh-pages
  git remote add git@github.com:qicz/qicz.github.io
  ```

- 自定义域名

  在`statis`下的`CNAME`，写入自定义域名，如`izcqi.com`

  > 可以通过`config.toml`来修改其他相关信息

### 写？

- 在qicz目录下使用`hugo new posts/xxxx.md`来创建一个xxxx的文件，文件名可以自定义，其将左右文章的默认title。

  > 文件名建议用中文，可以在md文件中来改成中文。

- 使用`sh preview.sh` 来预览修改，console会告诉你地址，如下就是 `http://localhost:1313`

  ```bash
  Qiczs-Macbook-Pro:qicz-hugo-blog-template master$ sh preview.sh 
  
                     | EN   
  +------------------+-----+
    Pages            |  17  
    Paginator pages  |   0  
    Non-page files   |   0  
    Static files     | 105  
    Processed images |   0  
    Aliases          |   3  
    Sitemaps         |   1  
    Cleaned          |   0  
  
  Total in 64 ms
  Watching for changes in /Users/BruceZCQ/Documents/blog/qicz-hugo-blog-template/{archetypes,content,static,themes}
  Watching for config changes in /Users/BruceZCQ/Documents/blog/qicz-hugo-blog-template/config.toml
  Environment: "development"
  Serving pages from memory
  Running in Fast Render Mode. For full rebuilds on change: hugo server --disableFastRender
  Web Server is available at http://localhost:1313/ (bind address 127.0.0.1)
  Press Ctrl+C to stop
  ```

- 使用`sh gen_deploy.sh` 来发布，稍等一会之后即可访问了。