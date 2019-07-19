<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-idth, initial-scale=1">
   

    <title>Welcome to Lovelyz World</title>

    <!-- Bootstrap Core CSS -->
    <link href="../css/bootstrap.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../css/business-casual.css" rel="stylesheet">

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">
	
	 <!-- jQuery -->
    <script src="../js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>

</head>
<body>
<div class="brand">My First Web</div>        
    <div class="address-bar">Let's Start!</div>
		
    <!-- Navigation -->
    <nav class="navbar navbar-default" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                
                <a class="navbar-brand" href="/lovelyz">Lovelyz World</a>
            </div>
           
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                	
                    <li>
                        <a href="/lovelyz">HOME</a>
                    </li>
                    <li>
                        <a href="member/member.jsp">Member</a>
                    </li>
                    <li>
                        <a href="#">BOARD</a>
                    </li>
                    <li>
                        <a href="#">LOGIN</a>
                    </li>
                    <li>
                        <a data-toggle="modal" href="#myModal" style="color:red">JOIN</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

<div class="container">
        <div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center">
                        <strong>Lovelyz</strong>
                    </h2>
                    <hr>
                </div>
                <div class="col-sm-4 text-center">
                    <img class="img-responsive" src="../img/member01.jpg" alt="">
                    <h3>Baby Soul
                        <small>리더, 리드보컬</small>
                    </h3>
                </div>
                <div class="col-sm-4 text-center">
                    <img class="img-responsive" src="../img/member02.jpg" alt="">
                    <h3>Yoo Ji-Ae
                        <small>서브보컬</small>
                    </h3>
                </div>
                <div class="col-sm-4 text-center">
                    <img class="img-responsive" src="../img/member03.jpg" alt="">
                    <h3>Seo Ji-Soo
                        <small>서브보컬, 메인댄서</small>
                    </h3>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
		<div class="row">
            <div class="box">
                <div class="col-lg-12">
                <div class="col-sm-4 text-center">
                    <img class="img-responsive" src="../img/member04.jpg" alt="">
                    <h3>Lee Mi-Joo
                        <small>서브보컬, 메인댄서</small>
                    </h3>
                </div>
                <div class="col-sm-4 text-center">
                    
                   
                </div>
                <div class="col-sm-4 text-center">
                    <img class="img-responsive" src="../img/member05.jpg" alt="">
                    <h3>Kei
                        <small>메인보컬, 리드댄서</small>
                    </h3>
                </div>
                <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="box">
                <div class="col-lg-12">
                <div class="col-sm-4 text-center">
                    <img class="img-responsive" src="../img/member06.jpg" alt="">
                    <h3>JIN
                        <small>메인보컬</small>
                    </h3>
                </div>
                <div class="col-sm-4 text-center">
                    <img class="img-responsive" src="../img/member07.jpg" alt="">
                    <h3>Ryu Su-Jeong
                        <small>리드보컬</small>
                    </h3>
                </div>
                <div class="col-sm-4 text-center">
                    <img class="img-responsive" src="../img/member08.jpg" alt="">
                    <h3>Jeong Ye-In
                        <small>서브보컬, 리드댄서</small>
                    </h3>
                </div>
                <div class="clearfix"></div>
                </div>
            </div>
        </div>
        
    </div>
    <!-- /.container -->

    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <p>Copyright &copy; By S.G. Hong 201X.XX.XX~</p>
                </div>
            </div>
        </div>
    </footer>
</body>
</html>