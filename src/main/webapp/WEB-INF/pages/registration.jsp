<%@ page session="true"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 <spring:url value="resources/css/bootstrap.css" var="bootstrap"/>
   <link href="${bootstrap}" rel="stylesheet" />
<html >
<head>
  <meta charset="UTF-8">
  <title>Registration Form</title>

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
  <link rel="stylesheet" href="resources/custom.css">



  <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>

</head>

<body>
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600' rel='stylesheet' type='text/css'>
<link href="//netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css" rel="stylesheet">

<div class="testbox">
  <h1>Registration</h1>

  <form:form commandName="USER">


    <hr>
    <div class="accounttype">
      <input type="radio" value="Customer" id="radioOne" name="typeOfUser" checked/>
      <label for="radioOne" class="radio" chec>Personal</label>
      <input type="radio" value="Freelancer" id="radioTwo" name="typeOfUser" />
      <label for="radioTwo" class="radio">Company</label>
    </div>
  <hr>

  <hr>
  <label id="icon" for="name"><i class="icon-envelope "></i></label>
  <input path="name" type="text" name="name" id="name" placeholder="Email" required/>
  <label id="icon" for="name"><i class="icon-user"></i></label>
  <input path="pasword" input type="text" password="name" id="password" placeholder="Password" required/>
  <label id="icon" for="name"><i class="icon-shield"></i></label>
  <input path="password" input type="password" name="name" id="name" placeholder="Password" required/>
  <div class="gender">

    <radiobutton path="sex" input type="radio" value="None" id="male" name="gender" checked="checked"/>
    <label for="sex" class="radio" >Male</label>
    <radiobutton path="sex" input type="radio" value="None" id="female" name="gender" />
    <label for="female" class="radio">Female</label>
   </div>
   <p>By clicking Register, you agree on our <a href="#">terms and condition</a>.</p>
   <input type="submit" button type="submit"  class="btn btn-success">Register</a>
  </form:form>
</div>


</body>
</html>
