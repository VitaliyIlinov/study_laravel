<div id="sidebar" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">

    <ul>
        {!! $sidebar !!}
    </ul>

</div>
<script>
    $('#sidebar a[href="#"]').on('click',function (e){
        e.preventDefault();
        $(this).closest('li').toggleClass('opened');
        $(this).next('ul').slideToggle( 300, function() {
            // Animation complete.
        });
    });
    $('a[href="'+location.pathname+'"]').parents('ul').show(0,function(){
       $(this).closest('li').toggleClass('opened');
    });
</script>
