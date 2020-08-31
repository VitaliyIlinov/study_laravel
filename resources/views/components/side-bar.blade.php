<div id="sidebar" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
    <a href="/" class="logo">
        <img class="mark" src="/img/logomark.min.svg" alt="Laravel">
        <img class="type" src="/img/logotype.min.svg" alt="Laravel">
    </a>
    <ul>
        {!! $sidebar !!}
    </ul>

</div>
<script>
    $('#sidebar a[href="#"]').on('click',function (e){
        e.preventDefault();
        // $(this).closest('li').toggleClass( "opened" );
        $(this).nextAll('ul').slideToggle( 300, function() {
            // Animation complete.
        });
    });
    $('a[href="'+location.pathname+'"]').parents('ul').show();
</script>
