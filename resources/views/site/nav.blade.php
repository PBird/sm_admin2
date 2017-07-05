 <nav >


                <div class="row">

                    <img src={{asset("site/resources/img/logo-white.png")}} alt="Omnifood logo" class="logo" >
                    <img src={{asset("site/resources/img/logo.png")}} alt="Omnifood logo" class="logo-black" >

                    <ul class="main-nav">

                        @foreach($navs as $nav)
                        <li> <a href="{{$nav->tag}}"  > {{$nav->name}} </a> </li>
                        @endforeach
                    </ul>

                </div>

</nav>