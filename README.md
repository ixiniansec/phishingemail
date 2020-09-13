### PhishingEmail

- This program mainly relies on swaks to run.
- You can customize the SMTP server to solve the problem of entering the trash can.

#### Screenshot:

![src](https://i.imgur.com/FQXZgma.png)



#### Instructions for use:

```bash
git clone https://github.com/xinianteam/phishingemail.git
cd phishingemail
echo "alias pwnmail=[Your Dir]/phishingemail.sh" >> /etc/bashrc
```



- First enter the email address you need to forge:

  ![src](https://i.imgur.com/giWFsaT.png)

- Enter destination address:

  ![src](https://i.imgur.com/7W26T4B.png)



- Ask if you need to send the file, if you don’t need to send, don’t need to set, just press Enter:

![src](https://i.imgur.com/t6xiMef.png)



- Enter the message title:

  ![src](https://i.imgur.com/z2VRY5i.png)

  

- Enter the message text:

![src](https://i.imgur.com/YVLvquk.png)

![src](https://i.imgur.com/nXI5Hvk.png)

![src](https://i.imgur.com/htgweVG.png)

#### Solve the spam problem：

Add smtp server:

```bash
--server mail.smtp2go.com -p 2525 -au SMTPUSERNAME -ap SMTPPASSWORD
```

#### More information:

Telegram:https://t.me/zhpentest
Twitter:https://twitter.com/Acardia2020





