$(document).ready(function () {
    $("#Button1").click(function (evt) {
        evt.preventDefault();

        $('#Panel1').slideToggle('slow');
        if ($('#Panel1').hasClass('panel')) {
            $('#PanelState').attr('value', 'true');
        } else {
            $('#PanelState').attr('value', 'false');
        }
    });

    if ($('#PanelState').attr('value') == 'false') {
        $('#Panel1').addClass('panel');
    }
});