

<aside class="left-sidebar">
        <!-- Sidebar scroll-->
        <div class="scroll-sidebar">
            <!-- Sidebar navigation-->
            <nav class="sidebar-nav bg-dark">
                <ul id="sidebarnav">
                    {{-- <li class="user-profile"> <a class="has-arrow waves-effect waves-dark" href="#" aria-expanded="false"><img src="{{asset('assets/images/users/profile.png')}}" alt="user" /><span class="hide-menu">Steave Jobs </span></a>
                        <ul aria-expanded="false" class="collapse">
                            <li><a href="javascript:void()">My Profile </a></li>
                            <li><a href="javascript:void()">My Balance</a></li>
                            <li><a href="javascript:void()">Inbox</a></li>
                            <li><a href="javascript:void()">Account Setting</a></li>
                            <li><a href="javascript:void()">Logout</a></li>
                        </ul>
                    </li> --}}
                    <li class="nav-devider"></li>

                    <li> <a class="has-arrow waves-effect waves-dark" href="#" aria-expanded="false"><i class="mdi mdi-account"></i><span class="hide-menu">Admins <span class="label label-rouded label-themecolor pull-right">4</span></span></a>
                        <ul aria-expanded="false" class="collapse">
                            <li><a href="{{route('admin.index')}}">All Admins </a></li>
                            <li><a href="{{route('admin.create')}}">Create Admin</a></li>
                        </ul>
                    </li>


                    <li> <a class="has-arrow waves-effect waves-dark" href="#" aria-expanded="false"><i class="mdi mdi-account-multiple-outline"></i><span class="hide-menu">Users <span class="label label-rouded label-themecolor pull-right">4</span></span></a>
                        <ul aria-expanded="false" class="collapse">
                            <li><a href="{{route('user.index')}}">All Users </a></li>
                            <li><a href="{{route('user.create')}}">Create User</a></li>
                        </ul>
                    </li>


                    <li> <a class="has-arrow waves-effect waves-dark" href="#" aria-expanded="false"><i class="mdi mdi-check-all"></i><span class="hide-menu">Courses</span></a>
                        <ul aria-expanded="false" class="collapse">
                            <li><a href="{{route('course.index')}}">All Courses</a></li>
                            <li><a href="{{route('course.create')}}">Create Course</a></li>
                        </ul>
                    </li>


                    <li> <a class="has-arrow waves-effect waves-dark" href="#" aria-expanded="false"><i class="mdi mdi-archive"></i><span class="hide-menu">Categories</span></a>
                        <ul aria-expanded="false" class="collapse">
                            <li><a href="{{route('categories.index')}}">All Categories</a></li>
                        </ul>
                    </li>



                    <li> <a class="has-arrow waves-effect waves-dark" href="#" aria-expanded="false"><i class="mdi mdi-gift"></i><span class="hide-menu">Offers</span></a>
                        <ul aria-expanded="false" class="collapse">
                            <li><a href="{{route('offers.index')}}">All Offers</a></li>
                            <li><a href="{{route('offers.create')}}">Create Offer</a></li>
                        </ul>
                    </li>


                    <li> <a class="has-arrow waves-effect waves-dark" href="#" aria-expanded="false"><i class="mdi mdi-numeric-9-plus-box-outline"></i><span class="hide-menu">Orders</span></a>
                        <ul aria-expanded="false" class="collapse">
                            <li><a href="{{route('orders.index')}}">All Orders</a></li>
                        </ul>
                    </li>


                    <li> <a class="has-arrow waves-effect waves-dark" href="#" aria-expanded="false"><i class="mdi mdi-video"></i><span class="hide-menu">Videos</span></a>
                        <ul aria-expanded="false" class="collapse">
                            <li><a href="{{route('videos.index')}}">All Videos</a></li>
                            <li><a href="{{route('videos.create')}}">Create Video</a></li>
                        </ul>
                    </li>


                    <li> <a class="has-arrow waves-effect waves-dark" href="#" aria-expanded="false"> <i class="mdi mdi-blogger"></i><span class="hide-menu">Blogs</span></a>
                        <ul aria-expanded="false" class="collapse">
                            <li><a href="{{route('blog.index')}}">All Blogs</a></li>
                            <li><a href="{{route('blog.create')}}">Create Blog</a></li>
                        </ul>
                    </li>

                    <li> <a class="has-arrow waves-effect waves-dark" href="#" aria-expanded="false"><i class="mdi mdi-cellphone-settings"></i><span class="hide-menu">Contacts</span></a>
                        <ul aria-expanded="false" class="collapse">
                            <li><a href="{{route('contacts.index')}}">All Contacts</a></li>
                        </ul>
                    </li>



                </ul>
            </nav>
            <!-- End Sidebar navigation -->
        </div>
        <!-- End Sidebar scroll-->
    </aside>
