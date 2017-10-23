<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="jquery-3.1.1.min.js" type="text/javascript"></script>
<script>
    $(document).ready(function () {
        $(".img-box").mouseover(function () {
            $(this).children("span").children("img").addClass("image-on");
            $(this).children(".text-span").addClass("center");
        });
        $(".img-box").mouseout(function () {
            $(this).children("span").children("img").removeClass("image-on");
            $(this).children(".text-span").removeClass("center");
        });
    });
</script>
<style>
body{overflow:hidden}
	
	.main{display:flex; height:100vh; align-items:center;}
	.main .container{margin:0 auto;}
	.main .container .img-box{width:23.5%; display:inline-block; margin-right:2%; float:left; overflow:hidden;}
	.main .container .img-box:nth-last-child(2){margin:0;}
	.blue{background-color:#2196f3;border-color:#2196f3;}
	.green{background-color:#00b5a4;border-color:#00b5a4;}
	.black{background-color:black; border-color:black;}
	.orange{background-color:#ffc107; border-color:#ffc107;}
	.main .container .img-box .span-img{display:block; height:300px;}
	.main .container .img-box .span-img img{position:relative; transition-duration:1s; transform:scale(1,1); margin-bottom:82px; opacity:1; max-width:100%; min-height:100%;}
	.image-on{opacity:1!important; transform:scale(1.5,1.5)!important; transform:translate(5deg)!important;}
	.text-span{position:relative; color:white; font-size:20px; font-family:arial; font-weight:bold; height:80px; display:block; padding:5px 25px 25px 25px; transition-duration:1s;}
	.text-span a{color:#fff;}
	.text-span a:hover{text-decoration:none;}
	.center{padding-top:25px; text-align:center;}
	.clear{clear:both;}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
        <div class="container" id="slider">
            <br />
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <%--<ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                    <li data-target="#myCarousel" data-slide-to="3"></li>
                </ol>--%>
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="lawn1.jpg" />
                    </div>
                    <div class="item">
                        <img src="lawn2.jpg" />
                    </div>
                    <div class="item">
                        <img src="lawn3.jpg" />
                    </div>
                    <div class="item">
                        <img src="lawn4.jpg" />
                    </div>
                </div>
            </div>
        </div>
        <div class="main">
		<div class="container">
			<div class="img-box orange">
				<span class="span-img">
					<img src="lawn1.jpg"/>
				</span>
				<span class="text-span orange"><a href="Lawns.aspx">Lawns & Banquet</a></span>
			</div>
			<div class="img-box blue">
				<span class="span-img">
					<img src="services1.png"/>
				</span>
				<span class="text-span blue"><a href="#">Decoration</a></span>
			</div>
			<div class="img-box green">
				<span class="span-img">
					<img src="services2.png" />
				</span>
				<span class="text-span green"><a href="cateringPackages.aspx">Catering</a></span>
			</div>
			<div class="img-box black">
				<span class="span-img">
					<img src="services3.png"/>
				</span>
				<span class="text-span black"><a href="#">Photography</a></span>
			</div>
			<div class="clear"></div>
		</div>
	</div>
</asp:Content>