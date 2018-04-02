## XRSK
一个更换64位系统为锐速内核的方便脚本

---
### CentOS7更换内核
**第一步：**
```
yum install -y wget && wget --no-check-certificate -O C71.sh https://raw.githubusercontent.com/xratzh/XRSK/master/C71.sh && bash C71.sh
```
之后输入Y就会重启

**第二步：**
```
wget --no-check-certificate -O C72.sh https://raw.githubusercontent.com/xratzh/XRSK/master/C72.sh && bash C72.sh
```

---
### CentOS6更换内核
**第一步：**
```
yum install -y wget && wget --no-check-certificate -O C61.sh https://raw.githubusercontent.com/xratzh/XRSK/master/C61.sh && bash C61.sh
```
之后输入Y就会重启

**第二步：**
```
wget --no-check-certificate -O C62.sh https://raw.githubusercontent.com/xratzh/XRSK/master/C62.sh && bash C62.sh
```

其余的参考[https://github.com/0oVicero0/serverSpeeder_Install](https://github.com/0oVicero0/serverSpeeder_Install)
### Tips
- **存在对于其他内核的删除，只保留符合锐速列表内核的行为**
- **为什么不能一键**，因为Linux内核在4.0后支持不重启更换，但是CentOS和Debian/Ubuntu很多的内核都是4.0-的版本，Debian9和Ubuntu16.04则是4.0+的版本。
- 脚本里加入了对内核的锁定，之后update时不会变动内核。  
- 部分内容借鉴了[Vicer大佬](https://moeclub.org/2017/06/24/278/)和[Teddysun大佬](https://github.com/teddysun)的脚本
