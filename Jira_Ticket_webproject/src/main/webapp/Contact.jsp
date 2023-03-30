<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact</title>
</head>
<body>
<div class="contact-page">
  <h2>Get in touch</h2>
  <div class="contact-info">
  <div class="item">
      Name:
      Kowshick Thangaraj.
    </div>
    <div class="item">
      
      Address:
      Tambram,Chennai 600045.
    </div>
    <div class="item">
      phone no:
      9361995870.
    </div>
    <div class="item">
      Email:
      kkmasskk88@gmail.com
    </div>
    <div class="item">
      Working Hours:
      Mon - Fri 8:00 AM to 6:00 PM
    </div>
    <div class="item">
     <h3>Go back to<a href="HomeFile.jsp">"Home"</a>Page</h3>
    </div>
  </div>
 
  <form action="" class="contact-form">
 
    <input type="text" class="textb" placeholder="Your Name">
    <input type="email" class="textb" placeholder="Your Email">
    <textarea placeholder="Your Message"></textarea>
    <input type="submit" class="btn" value='Send'>
  </form>
</div>


<style>*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Open Sans",sans-serif;
}

body{
  min-height: 100vh;
  background: url(https://fadzrinmadu.github.io/hosted-assets/amazing-contact-page-using-html-css/bg.png) no-repeat center;
  background-size: cover;
  display: flex;
  align-items: center;
  justify-content: center;
}

.contact-page{
  width: 100%;
  max-width: 1400px;
  padding: 50px;
  display: flex;
  align-items: flex-start;
  justify-content: center;
  flex-wrap: wrap;
}

h2{
  width: 100%;
  margin-bottom: 80px;
  text-transform: uppercase;
  color: #322;
  font-size: 60px;
}

.contact-info, .contact-form{
  flex: 1;
}

.item{
  margin-bottom: 24px;
  font-size: 16px;
  color: #322;
}

.icon{
  width: 60px;
  height: 60px;
  line-height: 60px;
  background-color: #3494db;
  text-align: center;
  color: #fff;
  border-radius: 50%;
  margin-right: 16px;
}

.contact-form{
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
}
 

.textb{
  width: calc(50% - 10px);
  height: 50px;
  padding: 12px;
  background-color: #222;
  border: none;
  color: #fff;
  margin-bottom: 20px;
}

textarea{
  width: 100%;
  min-height: 200px;
  max-height: 400px;
  resize: vertical;
  padding: 12px;
  background-color: #222;
  border: none;
  color: #fff;
  margin-bottom: 20px;
}

.btn{
  width: 120px;
  height: 40px;
  margin-left: auto;
  background-color: #3494db;
  border: none;
  color: #fff;
  text-transform: uppercase;
  cursor: pointer;
  border: 2px solid #3494db;
  transition: .3s linear;
}

.btn:hover{
  background-color: transparent;
  color: #3494db;
}

@media screen and (max-width: 980px){
  .contact-page{
    max-width: 800px;
  }
  h2{
    font-size: 40px;
    margin-bottom: 40px;
  }

  .contact-info, .contact-form{
    flex: 100%;
    margin-bottom: 30px;
  }
  .textb{
    width: 100%;
  }
}</style>



</body>
</html>