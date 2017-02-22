import smtplib
from email.MIMEMultipart import MIMEMultipart
from email.MIMEBase import MIMEBase
from email import Encoders

to=['kwhershey@gmail.com','hersh029@umn.edu']
msg = MIMEMultipart()
msg['Subject'] = "Weight Graph"
msg['From'] = 'mandelbrotemail@gmail.com'
msg['To'] = str(to)

part = MIMEBase('application', "octet-stream")
part.set_payload(open("weight.png", "rb").read())
Encoders.encode_base64(part)

part.add_header('Content-Disposition', 'attachment; filename="weight.png"')

msg.attach(part)

mail = smtplib.SMTP('smtp.gmail.com',587)

mail.ehlo()

mail.starttls()

mail.login('mandelbrotemail@gmail.com','plaintext')

mail.sendmail('mandelbrotemail@gmail.com',to,msg.as_string())

