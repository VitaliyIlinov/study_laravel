<nav id="sidebar" class="test">
    <div class="p-4 pt-5">
        <a href="/" class="img logo rounded-circle mb-5" style="background-image: url(/logo.png);"></a>
        <ul class="list-unstyled components mb-5">
            @include('front.info.child_category',['categories'=>$getMenu()])
        </ul>
        <div class="footer">
            <p>
                Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by
                <a href="https://colorlib.com" target="_blank">Colorlib.com</a><br>
                <a href="https://habr.com/ru/post/520472/" target="_blank">Interview QUESTIONS with answer</a>
            </p>
        </div>
    </div>
</nav>
