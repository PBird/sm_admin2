

@include('site.head')


    <body>

        <header>
                @include('site.nav')



                @include('site.hero')
        </header>



               @foreach($pages as $page)

             <?php echo $page->content; ?>

                @endforeach


        @include('site.scripts')


    </body>



</html>

<!--


Title: We're happy to hear from you

Fields to include:
Name
Email
How did you find us?
Newsletter
Drop us a line
-->

