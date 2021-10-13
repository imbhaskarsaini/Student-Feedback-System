# Student-Feedback-System
A Web based Student Feedback system to easily mainage the details of students,faculty,feedback,Faculty type and feedback Ratings.

                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="about.html"><span class="glyphicon glyphicon-book"></span> About</a></li>
                        <li><a href="index.php?info=signup"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                        <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-log-in"></span> Login</a>
        <ul class="dropdown-menu">

          <li><a href="index.php?info=student">Student</a></li>
      <li><a href="index.php?info=faculty">Faculty</a></li>
          <li><a href="admin">Admin</a></li>
        </ul>
      </li>
                    </ul>
                </div>
            </div>
        </div>
        <?php
					@$info=$_GET['info'];
					if($info!="")
					{

						 if($info=="about")
						 {
						 include('about.html');
			       }


						 else if($info=="student")
						 {
						 include('Student.php');
						 }

						  else if($info=="faculty")
						 {
						 include('faculty.php');
						 }


						 else if($info=="signup")
						 {
						 	include('signup.php');
						 }
					}
					else
					{
				?>


        <div class="container">
          <h2>MORADABAD INSTITUTE OF TECHNOLOGY</h2>
          <p>To monitor and make improvements, the college <br>
needs feedback on student experiences.</p>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="images/b.webp" alt="mit3">
    </div>

    <div class="item">
      <img src="images/c.png" alt="mit2">
    </div>

    <div class="item">
      <img src="images/student.jpg" alt="mit1">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>


