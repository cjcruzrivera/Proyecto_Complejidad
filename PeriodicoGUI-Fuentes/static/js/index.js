(function () {
    'use strict';
    window.addEventListener('load', function () {
        // Fetch all the forms we want to apply custom Bootstrap validation styles to
        var forms = document.getElementsByClassName('needs-validation');
        // Loop over them and prevent submission
        var validation = Array.prototype.filter.call(forms, function (form) {
            form.addEventListener('submit', function (event) {
                if (form.checkValidity() === false) {
                    event.preventDefault();
                    event.stopPropagation();
                }
                form.classList.add('was-validated');
            }, false);
        });
    }, false);
})();



$(document).ready(function () {
    $(".removeTopic").click(function () {
        $(this).parent().parent().remove();
    });

    $("#newTopic").click(function () {
        $("#calcular").prop("disabled", true);
        $(this).prop("disabled", true);
        var newRow = $("#example").clone().appendTo('tbody');
        newRow.removeClass("d-none");
        newRow.find(".newTopicLabel").attr("id", "newTopicValue");
        

        
        
        $(".addTopic").on("click", function () {
            var element = $("#newTopicValue");
            var valTopic = element.val();
            if (valTopic == "") {
                console.log("VACIO")
                element.addClass("is-invalid");
                element.next(".invalid-feedback").show()
                return;
            }else{
                element.next(".invalid-feedback").hide();
                console.log(element.parent().parent().attr("id"));
                element.parent().parent().find("#max").attr("name", "max"+valTopic).attr("id", "max"+valTopic);
                element.parent().parent().find("#min").attr("name", "min"+valTopic).attr("id", "min"+valTopic);
                element.parent().parent().find("#potencial").attr("name", "potencial"+valTopic).attr("id", "potencial"+valTopic);
                element.parent().text(valTopic);
                element.remove();
                $(this).removeClass("addTopic btn-success").addClass("removeTopic btn-warning").text("-");
                $(".removeTopic").on("click",function () {
                    $(this).parent().parent().remove();
                });
                $("#calcular").prop("disabled", false);
                $("#newTopic").prop("disabled", false);
            }

        })
    });

})

