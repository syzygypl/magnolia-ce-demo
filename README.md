### Dependencies
Tested with:
* maven `3.5.4` - `3.6.3`
* java `1.8.0_242` - `9.0.4`
* docker client `19.03.5`
* docker server api `1.40`
* make

### Running
Make for the win:
```bash
make start
```
and nothing else needed :) 

Default sites url:
* [public](http://public.lvh.me/)
* [author](http://author.lvh.me/)
Read about login credentials [here](https://documentation.magnolia-cms.com/display/DOCS61/Logging+in)

#### Configure public instance
to configure publishing: 
* go [here](http://author.lvh.me/.magnolia/admincentral#app:configuration:browser;/modules/publishing-core/config/receivers/magnoliaPublic8080@url:treeview:) and set url value to `http://public:8080/`

### Technical
It is easy to setup magnolia CE version with **2 instances** 1 author and 1 public instance find more in `docker-compose.yaml`
Different postgres databases are used as **persistent** which data is persisted between starts with docker volume binding  
Project is created using two main utils: maven & java for compilation and docker-compose to boot environment 
Traefik is used as load-balancer
Instance hosts can be configured with `MAGNOLIA_AUTHOR_HOST` and `MAGNOLIA_PUBLIC_HOST` env and can be set in `.env` file
You can find additional commands in `Makefile`

### Deployment
Project is currently has no deployment configured.