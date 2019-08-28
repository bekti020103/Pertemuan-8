@import url('https://fonts.googleapis.com/css?family=Lato:100,300,300i,400&display=swap');

* {
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}

html {
    background-color: #fff;
    color: #555;
    font-family: 'Lato', 'Arial', sans-serif;
    font-weight: 300;
    font-size: 20px;
    text-rendering: optimizeLegibility;
    overflow-x: hidden;
}
.row{
    max-width: 1140px;
    margin: 0 auto;
}

/*nav and header*/
header{
    background-image: linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7)), url(img/hero.jpg);
    background-size: cover;
    background-position: center;
    height: 100vh;
    background-attachment: fixed;
}
.logo{
    margin: 25px 0 0 0;
    float: left;
    height: auto;
    width: 100px;
}
.main-nav{
    float: right;
    margin: 50px 40px 0 0;
    list-style: none;
}
.main-nav li{
    display: inline-block;
}
.main-nav li a {
    color: #fff;
    text-decoration: none;
    text-transform: uppercase;
    transition: 0.25s;
    padding: 10px;
    border-bottom: 2px solid transparent;
    font-size: 18px;
}
.main-nav li a:hover{
    border-bottom: 2px solid #e67e22;
}

/*heading huruf*/
h1, h2, h3{
    text-transform: uppercase;
    font-weight: 300;
}
h1{
    margin-top:0px; 
    color: #fff;
    font-size: 240%;
    word-spacing: 4px;
    letter-spacing: 1px;
    margin-bottom: 20px;
}
h2{
    font-size: 180%;
    word-spacing: 2px;
    text-align: center;
    margin-bottom: 30px;
    letter-spacing: 1px;
    font-weight: bold;
}
h2:after{
    margin: 0 auto;
    margin-top: 30px;
    content:" ";
    display: block;
    height: 2px;
    background-color: #e67e22;
    width:100px;
}
h3{
    font-size: 110%;
    margin-bottom: 15px;
    text-transform:uppercase;
    font-weight: 300;
}


.hero-text-box{
    position: absolute;
    top: 50%;
    left: 50%;
    width: 1140px;
    transform: translate(-50%);
}
.hero-text-box a{
    text-decoration: none;
}

/*buttom*/
a{
    color: #e67e22;
    text-decoration: none;
    padding-bottom: 1px;
    border-bottom: 1px solid #e67e22;
    transition: border-bottom 0.2s, color 0.2s;
}
.btn{
    display: inline-block;
    padding: 10px 30px;
    font-weight: 300;
    text-decoration: none;
    border-radius: 200px;
    transition: background-color 0.2s, border 0.2s, color 0.2s;
}
.btn-full:hover{
    background-color: #ec6e00;
    border: 1px solid #ec6e00;
}
.btn-full{
    background-color: #e67e22;
    border: 1px solid #e67e22;
    color: #fff;
    margin-right: 15px;
}

.btn-ghost{
    border: 1px solid #e67e22;
    color: #e67e22;
}
.btn-ghost:hover{
    background-color: #cf6d17;
    border: 1px solid #cf6d17;
    color: #fff;
}

/*section 1*/

.section{
    padding: 80px 0;
}
.row .head{
    max-width: 1140px;
    margin: 0 auto;
    padding: 0.2%;
}
.span-1-of-4{
    width: 23.8%;
}
.col{
    display: block;
    float: left;
    margin: 1% 0 1% 1.6%;
}
.col:first-child{
    margin-left: 0;
}
.long-copy{
    width: 70%;
    margin-left: 15%;
    line-height: 145%;
    text-align: justify;
    margin-bottom: 30px;
}
.box{
    padding: 1%;
}
.box p{
    font-size:90%;
    line-height: 145%;
}
.icon-big{
    display: block;
    color: #e67e22;
    margin-bottom: 10px;
    font-size: 350%;
}

/*section 2*/
.section-meals{
    padding: 0;
}
.clearfix{
    zoom: 1;
}
.meals-showcase{
    width: 100%;
    list-style: none;
}
.meals-showcase li{
    display: block;
    float: left;
    width: 25%;
    margin: 0;
}
.meal-photo{
    transform: scale(1.15);
    width: 100%;
    overflow: hidden;
    background-color: #000;
}
.meal-photo img{
    opacity: 0.7;
    width: 100%;
    height: auto;
    transition: transform 0.5s, opacity 0.5s;
}
.meal-photo img:hover{
    width: 100%;
    height: auto;
    transform: scale(1.10);
    opacity: 1;
}
