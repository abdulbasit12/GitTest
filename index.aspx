<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="jquery-3.1.1.min.js" type="text/javascript"></script>
<script>
$(document).ready(function(){
$(".container .img-box").click(function(){
if($(this).children("p").css("display") == "block"){
$(this).children("p").slideUp();
$(this).children("span").children("img").css("opacity","0");
$(this).children(".text-span").children(".span-arrow").removeClass("active");
$(this).children("span").children("img").removeClass("image-on");
}
else
{
$("p").hide();
$(".span-arrow").removeClass("active");
$(".img-box .span-img img").css("opacity","0");
$(this).children("p").slideDown();
$(this).children("span").children("img").css("opacity","1");
$(this).children(".text-span").children(".span-arrow").addClass("active");
$(this).children("span").children("img").addClass("image-on");
}
});
});
</script>
<style>
body{
overflow:scroll
}
.active{background-position:0 -33px;}

.main{margin:25px;}
.main .container{position:relative;}
.main .container .img-box{width:23.5%; display:inline-block; margin-right:2%; float:left;}
.main .container .img-box:nth-last-child(2){margin:0;}
.blue{background-color:#2196f3;border-color:#2196f3;}
.green{background-color:#00b5a4;border-color:#00b5a4;}
.black{
background-color:black;
border-color:black;
}
.orange{
background-color:#ffc107;
border-color:#ffc107;
}
.main .container .img-box .span-img{display:block; height:300px;}
.main .container .img-box .span-img img{
position:relative; transition-duration:1s; transform:scale(0,0); margin-bottom:82px; opacity:0; max-width:100%; min-height:100%;
}

.img-box:hover img, .image-on{opacity:1!important; transform:scale(1,1)!important; }
.text-span{
position:relative; color:white; font-size:20px; font-family:arial; font-weight:bold; height:80px; margin-left:5px; display:block;
padding: 20px 49px 20px 20px;
}
.span-arrow{
position:absolute; float:right; background-image:url("arrow-graduate.png"); width:30px; height:25px; background-repeat:no-repeat;
margin-right:10px; right:10px; top:20px;
}
.clear{
clear:both;
}
.text-p{
position:absolute; width:100%; background-color:white; left:0; padding:50px; box-sizing:border-box;
margin:0px 0px 0px 0px; text-align:justify; color:gray; display:none; border-width:1px; border-style: solid;
}
.img-close{
background-image:url("closebtn.png"); height:25px; width:25px; float:right; margin: -35px -30px 0 0;
}
.btn-p{
height:40px; width:150px; color:white; float:right; border:0; font-size:18px; padding:8px; margin-top:20px;
}
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
                        <img src="lawn1.jpg"  width="460" height="345" />
                    </div>
                    <div class="item">
                        <img src="lawn2.jpg"  width="460" height="345" />
                    </div>
                    <div class="item">
                        <img src="lawn3.jpg" width="460" height="345" />
                    </div>
                    <div class="item">
                        <img src="lawn4.jpg" width="460" height="345" />
                    </div>
                </div>
            </div>
        </div>
        <div class="main">
		<div class="container">
			<div class="img-box blue">
				<span class="span-img">
					<img src="graduate1.jpg" />
				</span>
				<span class="text-span">Some Text <span class="span-arrow"></span></span>
				<p class="text-p blue"><span class="img-close"></span>The oldest classical Greek and Latin writing had little or no space between words, and could be written in boustrophedon (alternating directions).
				Over time, text direction (left to right) became standardized, and word 
				dividers and terminal punctuation became common. The first way to divide sentences into groups was the original paragraphos, similar 
				to an underscore at the beginning of the new group. The Greek paragraphos evolved into the pilcrow, which in English manus
				cripts in the Middle Ages can be seen inserted inline between sentences. The hedera leaf has also been used in the same way.
				
				The oldest classical Greek and Latin writing had little or no space between words, and could be written in boustrophedon (alternating directions).
				Over time, text direction (left to right) became standardized, and word 
				dividers and terminal punctuation became common. The first way to divide sentences into groups was the original paragraphos, similar 
				to an underscore at the beginning of the new group. The Greek paragraphos evolved into the pilcrow, which in English manus
				cripts in the Middle Ages can be seen inserted inline between sentences. The hedera leaf has also been used in the same way.
				<br/>
				<button class="btn-p blue">Find out more</button>		
				</p>
			</div>
			<div class="img-box green">
				<span class="span-img">
					<img src="graduate1.jpg" />
				</span>
				<span class="text-span">Some Text <span class="span-arrow"></span></span>
				<p class="text-p green"><span class="img-close"></span>The classical Greek and Latin writing had little or no space between words, and could be written in boustrophedon (alternating directions).
				Over time, text direction (left to right) became standardized, and word 
				dividers and terminal punctuation became common. The first way to divide sentences into groups was the original paragraphos, similar 
				to an underscore at the beginning of the new group. The Greek paragraphos evolved into the pilcrow, which in English manus
				cripts in the Middle Ages can be seen inserted inline between sentences. The hedera leaf has also been used in the same way.
				
				The oldest classical Greek and Latin writing had little or no space between words, and could be written in boustrophedon (alternating directions).
				Over time, text direction (left to right) became standardized, and word 
				dividers and terminal punctuation became common. The first way to divide sentences into groups was the original paragraphos, similar 
				to an underscore at the beginning of the new group. The Greek paragraphos evolved into the pilcrow, which in English manus
				cripts in the Middle Ages can be seen inserted inline between sentences. The hedera leaf has also been used in the same way.
				<br/>
				<button class="btn-p green">Find out more</button>		
				</p>
			</div>
			<div class="img-box black">
				<span class="span-img">
					<img src="graduate1.jpg" />
				</span>
				<span class="text-span">Some Text <span class="span-arrow"></span></span>
				<p class="text-p black"><span class="img-close"></span>The oldest Greek and Latin writing had little or no space between words, and could be written in boustrophedon (alternating directions).
				Over time, text direction (left to right) became standardized, and word 
				dividers and terminal punctuation became common. The first way to divide sentences into groups was the original paragraphos, similar 
				to an underscore at the beginning of the new group. The Greek paragraphos evolved into the pilcrow, which in English manus
				cripts in the Middle Ages can be seen inserted inline between sentences. The hedera leaf has also been used in the same way.
				
				The oldest classical Greek and Latin writing had little or no space between words, and could be written in boustrophedon (alternating directions).
				Over time, text direction (left to right) became standardized, and word 
				dividers and terminal punctuation became common. The first way to divide sentences into groups was the original paragraphos, similar 
				to an underscore at the beginning of the new group. The Greek paragraphos evolved into the pilcrow, which in English manus
				cripts in the Middle Ages can be seen inserted inline between sentences. The hedera leaf has also been used in the same way.
				<br/>
				<button class="btn-p black">Find out more</button>		
				</p>
			</div>
			<div class="img-box orange">
				<span class="span-img">
					<img src="graduate1.jpg"/>
				</span>
				<span class="text-span">Some Text <span class="span-arrow"></span></span>
				<p class="text-p orange"><span class="img-close"></span>The oldest classical and Latin writing had little or no space between words, and could be written in boustrophedon (alternating directions).
				Over time, text direction (left to right) became standardized, and word 
				dividers and terminal punctuation became common. The first way to divide sentences into groups was the original paragraphos, similar 
				to an underscore at the beginning of the new group. The Greek paragraphos evolved into the pilcrow, which in English manus
				cripts in the Middle Ages can be seen inserted inline between sentences. The hedera leaf has also been used in the same way.
				
				The oldest classical Greek and Latin writing had little or no space between words, and could be written in boustrophedon (alternating directions).
				Over time, text direction (left to right) became standardized, and word 
				dividers and terminal punctuation became common. The first way to divide sentences into groups was the original paragraphos, similar 
				to an underscore at the beginning of the new group. The Greek paragraphos evolved into the pilcrow, which in English manus
				cripts in the Middle Ages can be seen inserted inline between sentences. The hedera leaf has also been used in the same way.
				<br/>
				<button class="btn-p orange">Find out more</button>		
				</p>
			</div>
			<div class="clear"></div>
		</div>
	</div>
</asp:Content>