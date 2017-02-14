
<nav class="navbar navbar-toggleable-md navbar-inverse bg-inverse fixed-top">
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <a class="navbar-brand" href="{{ '/' }}">Admin Panel : :</a>

    <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="{{ '/news' }}">News <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="{{ '/articles' }}">Articles</a>
            </li>
        </ul>
        @if (Route::has('login'))
            <div class="form-inline my-2 my-lg-0">
                @if (Auth::check())
                    <span style="color:white; padding-right:10px;">
                        Logged in as: {{ isset(Auth::user()->name) ? Auth::user()->name : Auth::user()->email }}
                    </span>
                    <a href="{{ route('logout') }}"
                       onclick="event.preventDefault();
                       document.getElementById('logout-form').submit();">
                        Logout
                    </a>

                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                        {{ csrf_field() }}
                    </form>
                @else
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="{{ '/login' }}">Login</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="{{ '/register' }}">Register</a>
                    </li>
                </ul>
                @endif
            </div>
        @endif

    </div>
</nav>