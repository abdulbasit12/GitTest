$(document).ready(function () {
    $(".header").mouseover(function () {
        $(this).css("font-size", "85%")
        $(this).css("transition-duration", "0.2s")

    })
    $(".header").mouseout(function () {
        $(this).css("font-size", "14px")
        $(this).css("color", "white")
    })
    $(".button").mouseover(function () {
        $(this).css("background-color", "white")
        $(this).css("color", "orange")
        $(this).css("border-color", "#ff8625")
    })
    $(".button").mouseout(function () {
        $(this).css("background-color", "#ff8625")
        $(this).css("color", "white")
        $(this).css("border-color", "transparent")
    })
    $(".textbox").mouseover(function () {
        $(this).css("border-color", "blue")
    })
    $(".textbox").mouseout(function () {
        $(this).css("border-color", "lightgray")
    })
    $("#ddd").mouseover(function () {
        $("#registerdropdown").slideDown("slow")
    })
    $("#main").mouseover(function () {
        $("#registerdropdown").slideUp("slow")
    })
})