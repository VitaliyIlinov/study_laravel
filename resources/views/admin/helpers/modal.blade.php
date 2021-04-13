<!-- Modal -->
<div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-xl" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Modal title</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                ...
            </div>
        </div>
    </div>
</div>
<script>
    // https://github.com/summernote/summernote/issues/2644
    $(document).on("show.bs.modal", '.modal', function (event) {
        console.log("Global show.bs.modal fire");
        var zIndex = 100000 + (10 * $(".modal:visible").length);
        $(this).css("z-index", zIndex);
        setTimeout(function () {
            $(".modal-backdrop").not(".modal-stack").first().css("z-index", zIndex - 1).addClass("modal-stack");
        }, 0);
    }).on("hidden.bs.modal", '.modal', function (event) {
        console.log("Global hidden.bs.modal fire");
        $(".modal:visible").length && $("body").addClass("modal-open");
    });
    $(document).on('inserted.bs.tooltip', function (event) {
        console.log("Global show.bs.tooltip fire");
        var zIndex = 100000 + (10 * $(".modal:visible").length);
        var tooltipId = $(event.target).attr("aria-describedby");
        $("#" + tooltipId).css("z-index", zIndex);
    });
    $(document).on('inserted.bs.popover', function (event) {
        console.log("Global inserted.bs.popover fire");
        var zIndex = 100000 + (10 * $(".modal:visible").length);
        var popoverId = $(event.target).attr("aria-describedby");
        $("#" + popoverId).css("z-index", zIndex);
    });
</script>
