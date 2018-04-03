## XRSK
一个更换64位系统为锐速内核的方便脚本

---
### Ubuntu14.04更换内核

```
apt install -y wget && wget --no-check-certificate -O U14.sh https://raw.githubusercontent.com/xratzh/XRSK/master/U14.sh && bash U14.sh
```
之后输入Y就会重启即可。

---
### Ubuntu16.04更换内核

```
apt install -y wget && wget --no-check-certificate -O U16.sh https://raw.githubusercontent.com/xratzh/XRSK/master/U16.sh && bash U16.sh
```
之后输入Y就会重启即可。

---
### Debian8更换内核

```
apt install -y wget && wget --no-check-certificate -O D8.sh https://raw.githubusercontent.com/xratzh/XRSK/master/D8.sh && bash D8.sh
```
之后输入Y就会重启即可。

---
### CentOS7更换内核
**第一步：**
```
yum install -y wget && wget --no-check-certificate -O X71.sh https://raw.githubusercontent.com/xratzh/XRSK/master/X71.sh && bash X71.sh
```
之后输入Y就会重启

**第二步：**
```
wget --no-check-certificate -O X72.sh https://raw.githubusercontent.com/xratzh/XRSK/master/X72.sh && bash X72.sh
```

---
### CentOS6更换内核
**第一步：**
```
yum install -y wget && wget --no-check-certificate -O X61.sh https://raw.githubusercontent.com/xratzh/XRSK/master/X61.sh && bash X61.sh
```
之后输入Y就会重启

**第二步：**
```
wget --no-check-certificate -O X62.sh https://raw.githubusercontent.com/xratzh/XRSK/master/X62.sh && bash X62.sh
```

其余的参考[https://github.com/0oVicero0/serverSpeeder_Install](https://github.com/0oVicero0/serverSpeeder_Install)
### Tips
- **存在对于其他内核的删除，只保留符合锐速列表内核的行为**
- **为什么不能一键**，因为Linux内核在4.0后支持不重启更换，但是CentOS和Debian/Ubuntu很多的内核都是4.0-的版本，Debian9和Ubuntu16.04则是4.0+的版本。
- 脚本里加入了对内核的锁定，之后update时不会变动内核。  
- 部分内容借鉴了[Vicer大佬](https://moeclub.org/2017/06/24/278/)和[Teddysun大佬](https://github.com/teddysun)的脚本
