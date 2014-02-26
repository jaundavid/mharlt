function updateCounter() {
    var len = $("#micropost_content").val().length;
    $("#count").text(140 - len + " characters remaining.");
}
$(document).ready(function() {
    $("#micropost_content").keyup(updateCounter);
    $("#micropost_content").change(updateCounter);
});
