$(document).ready(function () {
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
    $("#search-area").click(function () {
        $("#drop-search-area").slideDown()
    })
    $("#search-capacity").click(function () {
        $("#drop-search-capacity").slideDown()
    })
})